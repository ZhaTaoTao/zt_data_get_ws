/**
 *  @file
 *  @brief Implementation of NMEA-GN-GSA parser
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
static constexpr int mode_op_idx = 1;
static constexpr int mode_nav_idx = 2;
static constexpr int ids_idx = 3;
static constexpr int pdop_idx = 15;
static constexpr int hdop_idx = 16;
static constexpr int vdop_idx = 17;
static constexpr int gnss_id_idx = 18;

void GN_GSA::ConvertFromTokens(const std::vector<std::string>& tokens) {
    // Check if message size is wrong
    bool ok = tokens.size() == kSize_;
    if (!ok) {
        std::cout << "Error in parsing NMEA-GN-GSA string with " << tokens.size() << " fields!\n";
        ResetData();
        return;
    }
    
    // Populate mode
    mode_op = StringToChar(tokens.at(mode_op_idx));
    mode_nav = StringToInt(tokens.at(mode_nav_idx));

    // Populate ID numbers of satellites used
    ids.clear();
    for (unsigned int offset = 0; offset < 11; offset++) {
        int value = StringToInt(tokens.at(ids_idx + offset));
        
        if (value != 0) {
            ids.push_back(value);
        } else {
            break;
        }
    }

    // Populate Dilution of Precision (DOP)
    pdop = StringToDouble(tokens.at(pdop_idx));
    hdop = StringToDouble(tokens.at(hdop_idx));
    vdop = StringToDouble(tokens.at(vdop_idx));

    // Populate GNSS ID
    gnss_id = StringToInt(tokens.at(gnss_id_idx));
}

}  // namespace fixposition
