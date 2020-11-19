#include "ros/ros.h"
#include "std_msgs/String.h"

#include <sstream>

int main(int argc, char **argv)
{
    int count = 0;
    ros::init(argc,argv,"Talker");
    ros::NodeHandle nodeH;

    ros::Publisher chatter_pub = nodeH.advertise<std_msgs::String>("Chatter",1000);
    ros::Rate loop_rate(10);


    while(ros::ok())
    {
        std_msgs::String Message;
        std::stringstream ss;
        ss <<"Hello world " << count;
        Message.data = ss.str();

        ROS_INFO("%s", Message.data.c_str());

        chatter_pub.publish(Message);

        ros::spinOnce();
        loop_rate.sleep();
        count++;
    }

    return 0;
}
