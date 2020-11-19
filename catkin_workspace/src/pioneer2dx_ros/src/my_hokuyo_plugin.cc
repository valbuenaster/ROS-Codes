#ifndef _MY_HOKUYO_PLUGIN_HH_
#define _MY_HOKUYO_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/sensors/sensors.hh>
#include <gazebo/plugins/RayPlugin.hh>

#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"

#include "std_msgs/Float64MultiArray.h"

#include <ignition/math/Angle.hh>

#include "pioneer2dx_ros/myHokuyoMessage.h"

namespace gazebo
{
    class myHokuyoPlugin : public SensorPlugin
    {
        public: myHokuyoPlugin(): SensorPlugin(){}

        public: virtual void Load(sensors::SensorPtr _sensor, sdf::ElementPtr _sdf)
        {
            std::cout<<"My plugin for the Hokuyo sensor is taking place.\n"<<std::endl;

            this->sensor = std::dynamic_pointer_cast<sensors::RaySensor>(_sensor);
            if(this->sensor == NULL)
            {
                std::cerr << "\nFailed to cast _sensor pointer into sensors::RaySensor\n";
            }

            if(!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc,argv,"gazebo_client", ros::init_options::NoSigintHandler);
            }

            this->updateConnection = this->sensor->ConnectUpdated(std::bind(&myHokuyoPlugin::OnUpdate, this));

            this->rosNode.reset(new ros::NodeHandle("gazebo_client"));
            this->rosPublisher = this->rosNode->advertise<pioneer2dx_ros::myHokuyoMessage>("HokuyoRanges",100);

            ros::Rate loop_rate(60);

            this->NRays = this->sensor->RangeCount();
            this->angleRes = this->sensor->AngleResolution();
            this->angMax = this->sensor->AngleMax();
            this->angMin = this->sensor->AngleMin();

            this->sensor->SetActive(true);
        }
        
        public: virtual void OnUpdate()
        {
            pioneer2dx_ros::myHokuyoMessage MsgH;
            this->sensor->Ranges(this->ranges);
            MsgH.NRays = this->NRays;
            MsgH.angleRes = this->angleRes;
            MsgH.angMax = this->angMax.Radian();
            MsgH.angMin = this->angMin.Radian();
            MsgH.ranges = this->ranges;

            this->rosPublisher.publish(MsgH);
            ros::spinOnce();
        }
 
        private: sensors::RaySensorPtr sensor;
        private: event::ConnectionPtr updateConnection;
        private: std::unique_ptr<ros::NodeHandle> rosNode;
        private: ros::Publisher rosPublisher;
        private: ros::CallbackQueue rosQueueu;

        private: int NRays;
        private: double angleRes;
        private: std::vector<double> ranges;
        private: ignition::math::Angle angMax;
        private: ignition::math::Angle angMin;
    };
    GZ_REGISTER_SENSOR_PLUGIN(myHokuyoPlugin)
}
#endif
