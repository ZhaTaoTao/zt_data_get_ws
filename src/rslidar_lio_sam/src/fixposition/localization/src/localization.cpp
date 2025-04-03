#include "ros/ros.h"
#include "std_msgs/Int32.h"
#include "sensor_msgs/NavSatFix.h"
#include "nav_msgs/Odometry.h"
#include "tf/transform_datatypes.h"
#include <tf/transform_broadcaster.h>
extern "C"{
#include "clsGeo.h"
}

geometry_msgs::TransformStamped odom_trans;

double init_x,init_y;


void GetUtmFromGps( double dLon, double dLat, double *X,double *Y);
class talker_listener
{
private:
    tf::TransformBroadcaster odom_broadcaster;
    ros::Time current_time;
    int num;
    nav_msgs::Odometry odom;
    ros::NodeHandle nh;

    ros::Subscriber gps_sub;
    ros::Subscriber orientation_sub;
    ros::Subscriber twist_sub;

    ros::Publisher odom_pub;
    
    

public:
    talker_listener()
    {
        num = 100;

        gps_sub = nh.subscribe("fixposition/navsatfix", 1000, &talker_listener::gps_sub_Callback, this);

        orientation_sub = nh.subscribe("fixposition/odometry_enu", 1000, &talker_listener::orientation_sub_Callback, this);

        twist_sub = nh.subscribe("fixposition/odometry", 1000, &talker_listener::twist_sub_Callback, this);

        odom_pub = nh.advertise<nav_msgs::Odometry>("lhl/odometry", 1000);
      
    

        
    }
    void twist_sub_Callback(const nav_msgs::Odometry::ConstPtr &msg);
    void orientation_sub_Callback(const nav_msgs::Odometry::ConstPtr &msg);
    void gps_sub_Callback(const sensor_msgs::NavSatFix::ConstPtr &msg);
};

void talker_listener::twist_sub_Callback(const nav_msgs::Odometry::ConstPtr &msg)
{
   
    odom.twist=msg->twist;
    current_time = ros::Time::now();
    odom.header.stamp = current_time;
    odom_pub.publish(odom);
}

void talker_listener::orientation_sub_Callback(const nav_msgs::Odometry::ConstPtr &msg)
{
   
    odom.pose.pose.orientation=msg->pose.pose.orientation;

    odom_trans.transform.rotation= msg->pose.pose.orientation;
     
    current_time = ros::Time::now();
    odom.header.stamp = current_time;
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = "/odom";
    odom_trans.child_frame_id = "/base_link";
    odom_broadcaster.sendTransform(odom_trans);
    odom_pub.publish(odom);
}

void talker_listener::gps_sub_Callback(const sensor_msgs::NavSatFix::ConstPtr &msg)
{
    double dXStart, dYStart;
    GetUtmFromGps(msg->longitude,msg->latitude,&dXStart,&dYStart);
    odom.pose.pose.position.x=dYStart-init_y;
    odom.pose.pose.position.y=dXStart-init_x;
    odom.pose.pose.position.z=msg->altitude;
    odom.child_frame_id= "/base_link";
    //std::cout<<msg->longitude<<std::endl;
    // odom.header.frame_id= car_name + "/"+"odometry";
    odom.header.frame_id= "/odom";

    //geometry_msgs::TransformStamped odom_trans;
    current_time = ros::Time::now();
    odom_trans.header.stamp = current_time;
    odom_trans.header.frame_id = "/odom";
    odom_trans.child_frame_id = "/base_link";

    odom_trans.transform.translation.x = dYStart-init_y;
    odom_trans.transform.translation.y = dXStart-init_x;
    odom_trans.transform.translation.z = msg->altitude;

    //send the transform
    odom_broadcaster.sendTransform(odom_trans);

    odom_pub.publish(odom);

    // ROS_WARN_STREAM_THROTTLE(1.0, "X: " << odom.pose.pose.position.x << 
    //      ", Y: "<< odom.pose.pose.position.y << 
    //      ", yaw: "<< tf::getYaw(odom.pose.pose.orientation ));
}

int main(int argc, char **argv)
{   odom_trans.transform.rotation.x=0;
    odom_trans.transform.rotation.y=0;
    odom_trans.transform.rotation.z=0;
    odom_trans.transform.rotation.w=1;
    //GetUtmFromGps(115.419450815,22.68971231,&init_x,&init_y);
    //GetUtmFromGps(115.431365984,22.698356417,&init_x,&init_y);//玫瑰银摊
    GetUtmFromGps(106.465963478,29.56844331,&init_x,&init_y);//重庆大学主教门口
    std::cout<<init_x<<" "<<init_y<<std::endl;
    ros::init(argc, argv, "talker_listener");

    talker_listener tl;

    ros::spin();

    return 0;
}
