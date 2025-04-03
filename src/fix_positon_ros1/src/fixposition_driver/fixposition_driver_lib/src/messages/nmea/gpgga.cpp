/**
 *  @file
 *  @brief Implementation of NMEA-GP-GGA parser
 *
 * \verbatim
 *  ___    ___
 *  \  \  /  /
 *   \  \/  /   Fixposition AG
 *   /  /\  \   All right reserved.
 *  /__/  \__\
 * \endverbatim
 *
 */

/* PACKAGE */
#include <fixposition_driver_lib/messages/nmea_type.hpp>
#include <fixposition_driver_lib/messages/base_converter.hpp>

namespace fixposition {

/// msg field indices
static constexpr int time_idx = 1;
static constexpr int lat_idx = 2;
static constexpr int lat_ns_idx = 3;
static constexpr int lon_idx = 4;
static constexpr int lon_ew_idx = 5;
static constexpr int quality_idx = 6;
static constexpr int num_sv_idx = 7;
static constexpr int hdop_idx = 8;
static constexpr int alt_idx = 9;
static constexpr int alt_unit_idx = 10;
static constexpr int sep_idx = 11;
static constexpr int sep_unit_idx = 12;
static constexpr int diff_age_idx = 13;
static constexpr int diff_sta_idx = 14;

std::string join(const std::vector<std::string>& elements, const char& delimiter) {
    std::ostringstream os;
    for (auto it = elements.begin(); it != elements.end(); ++it) {
        if (it != elements.begin()) {
            os << delimiter;
        }
        os << *it;
    }
    return os.str();
}

void GP_GGA::ConvertFromTokens(const std::vector<std::string>& tokens) {
    // Check if message size is wrong
    bool ok = tokens.size() == kSize_;
    if (!ok) {
        std::cout << "Error in parsing NMEA-GP-GGA string with " << tokens.size() << " fields!\n";
        ResetData();
        return;
    }

    // Time string
    time_str = tokens.at(time_idx);

    // LLH coordinates
    double _lat = 0.0;
    double _lon = 0.0;
    const std::string _latstr = tokens.at(lat_idx);
    const std::string _lonstr = tokens.at(lon_idx);

    if (!_latstr.empty()) {
        _lat = StringToDouble(_latstr.substr(0,2)) + StringToDouble((_latstr.substr(2))) / 60;
        if (tokens.at(lat_ns_idx).compare("S") == 0) _lat *= -1;
    }

    if (!_lonstr.empty()) {
        _lon = StringToDouble(_lonstr.substr(0,3)) + StringToDouble((_lonstr.substr(3))) / 60;
        if (tokens.at(lon_ew_idx).compare("W") == 0) _lon *= -1;
    }

    llh = Eigen::Vector3d(_lat, _lon, StringToDouble(tokens.at(alt_idx)));

    // LLH indicators
    lat_ns   = StringToChar(tokens.at(lat_ns_idx));
    lon_ew   = StringToChar(tokens.at(lon_ew_idx));
    alt_unit = StringToChar(tokens.at(alt_unit_idx));
    quality  = ParseStatusFlag(tokens, quality_idx);
    num_sv   = StringToInt(tokens.at(num_sv_idx));

    // Dilution of precision
    hdop = StringToDouble(tokens.at(hdop_idx));

    // Differental data
    diff_age = StringToDouble(tokens.at(diff_age_idx));
    diff_sta = tokens.at(diff_sta_idx);

    // ASCII sentence
    sentence = join(tokens, ',');
}

}  // namespace fixposition
