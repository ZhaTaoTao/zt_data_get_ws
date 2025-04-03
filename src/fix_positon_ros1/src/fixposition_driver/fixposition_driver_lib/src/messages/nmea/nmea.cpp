/**
 *  @file
 *  @brief Implementation of NMEA-GX-GSV parser
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

void NmeaMessage::AddNmeaEpoch(const GP_GGA& msg) {
    // Populate time if empty
    if (time_str == "") {
        time_str = msg.time_str;
    }
    gpgga_time_str = msg.time_str;
    
    // Populate LLH position
    llh = msg.llh;

    // Populate quality
    quality = msg.quality;

    // Populate total number of satellites
    num_sv = msg.num_sv;

    // Populate GNSS receiver HDOP
    hdop_receiver = msg.hdop;

    // Populate differential data information
    diff_age = msg.diff_age;
    diff_sta = msg.diff_sta;
    
    // Populate position covariance [m^2]
    cov(0, 0) = msg.hdop * msg.hdop;
    cov(1, 1) = msg.hdop * msg.hdop;
    cov(2, 2) = 4 * msg.hdop * msg.hdop;
    cov(0, 1) = cov(1, 0) = 0.0;
    cov(0, 2) = cov(2, 0) = 0.0;
    cov(1, 2) = cov(2, 1) = 0.0;
}

void NmeaMessage::AddNmeaEpoch(const GP_GLL& msg) {
    // Populate time if empty
    if (time_str == "") {
        time_str = msg.time_str;
    }
    
    // Populate latitude and longitude if the vector is empty
    if (llh.isZero()) {
        llh(0) = msg.latlon(0);
        llh(1) = msg.latlon(1);
    }
}

void NmeaMessage::AddNmeaEpoch(const GN_GSA& msg) {
    // Populate DOP values (priority)
    pdop = msg.pdop;
    hdop = msg.hdop;
    vdop = msg.vdop;

    // Populate satellite information (priority)
    ids = msg.ids;
}

void NmeaMessage::AddNmeaEpoch(const GP_GST& msg) {
    // Populate time if empty
    if (time_str == "") {
        time_str = msg.time_str;
    }

    // Populate GNSS pseudorange error statistics (priority)
    rms_range = msg.rms_range;
    std_major = msg.std_major;
    std_minor = msg.std_minor;
    angle_major = msg.angle_major;
    std_lat = msg.std_lat;
    std_lon = msg.std_lon;
    std_alt = msg.std_alt;
}

void NmeaMessage::AddNmeaEpoch(const GX_GSV& msg) {    
    // Populate GNSS signal stats
    for (u_int8_t i = 0; i < msg.sat_id.size(); i++) {
        GnssSignalStats *stats = &gnss_signals[msg.type][msg.sat_id.at(i)];

        // Populate necessary fields
        if (stats->elev == 0) { stats->elev = msg.elev.at(i); }
        if (stats->azim == 0) { stats->azim = msg.azim.at(i); }

        // Populate CNO
        if (msg.signal_id == "1" || msg.signal_id == "7") {
            stats->cno_l1 = msg.cno.at(i);
        } else if (msg.signal_id == "6" || msg.signal_id == "2" || msg.signal_id == "B" || msg.signal_id == "3") {
            stats->cno_l2 = msg.cno.at(i);
        }
    }
}

void NmeaMessage::AddNmeaEpoch(const GP_HDT& msg) {
    // Populate true heading (priority)
    heading = msg.heading;
}

void NmeaMessage::AddNmeaEpoch(const GP_VTG& msg) {
    // Populate SOG and COG if empty
    if (speed == 0.0) {
        speed = msg.sog_kph / 3.6; // Convert km/h to m/s
    }

    if (course == 0.0) {
        course = msg.cog_true;
    }
}

void NmeaMessage::AddNmeaEpoch(const GP_RMC& msg) {
    // Populate time if empty
    if (time_str == "") {
        time_str = msg.time_str;
    }

    // Populate time if empty
    if (date_str == "") {
        date_str = msg.date_str;
    }

    // Populate SOG and COG (priority)
    speed = msg.speed_ms;
    course = msg.course;
    
    // Populate latitude and longitude if the vector is empty
    if (llh.isZero()) {
        llh(0) = msg.latlon(0);
        llh(1) = msg.latlon(1);
    }
}

void NmeaMessage::AddNmeaEpoch(const GP_ZDA& msg) {
    // Populate time and date
    time_str = msg.time_str;
    date_str = msg.date_str;
    gpzda_time_str = msg.time_str;
}

}  // namespace fixposition
