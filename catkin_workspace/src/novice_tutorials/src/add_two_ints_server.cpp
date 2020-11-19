#include "ros/ros.h"
#include "novice_tutorials/AddTwoInts.h"

bool add(novice_tutorials::AddTwoInts::Request &req,
         novice_tutorials::AddTwoInts::Response &res)
{
    res.sum = req.a + req.b;
    ROS_INFO("request: x = %ld, y = %ld", (long int)req.a,(long int)req.b);
    ROS_INFO("sending back response: [%ld]", (long int)res.sum);
    return true;
}

int main(int argc, char **argv)
{
    ros::init(argc,argv,"add_two_ints_server");
    ros::NodeHandle nodeH;

    ros::ServiceServer service = nodeH.advertiseService("add_two_ints", add);
    ROS_INFO("Ready to add two ints.");
    ros::spin();

    return 0;
}
