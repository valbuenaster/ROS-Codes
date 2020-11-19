#ifndef _MY_MAGNETOMETER_PLUGIN_HH_
#define _MY_MAGNETOMETER_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/sensors/sensors.hh>
#include <gazebo/sensors/MagnetometerSensor.hh>
#include <gazebo/common/Time.hh>

#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"

namespace gazebo
{
    class myMagnetometerPlugin: public SensorPlugin
    {
        public: myMagnetometerPlugin(): SensorPlugin(){}

        public: virtual void Load(sensors::SensorPtr _sensor, sdf::ElementPtr _sdf)
        {
            std::cout<<"My plugin for the IMU sensor is taking place.\n"<<std::endl;

            this->sensor = std::dynamic_pointer_cast<sensors::MagnetometerSensor>(_sensor);
            if(this->sensor == NULL)
            {
                std::cerr << "\nFailed to cast _sensor pointer into sensors::MagnetometerSensor\n";
            }

            if(!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc,argv,"gazebo_client", ros::init_options::NoSigintHandler);
            }
            this->updateConnection = this->sensor->ConnectUpdated(std::bind(&myMagnetometerPlugin::OnUpdate, this));

            this->rosNode.reset(new ros::NodeHandle("gazebo_client"));
            this->rosPublisher = this->rosNode->advertise<pioneer2dx_ros::myIMUMessage>("MagnetometerReadings",100);

            ros::Rate loop_rate(100);
            this->MagnetometerOwner = this->sensor->ParentName();

            this->sensor->SetReferencePose();
            this->sensor->SetActive(true);            
        }
        public: virtual void OnUpdate()
        {

            this->rosPublisher.publish(MsgH);
            ros::spinOnce();
        }

        private: sensors::MagnetometerSensorPtr sensor;
        private: event::ConnectionPtr updateConnection;
        private: std::unique_ptr<ros::NodeHandle> rosNode;
        private: ros::Publisher rosPublisher;
        private: ros::CallbackQueue rosQueueu;

        private: std::string MagnetometerOwner;
        private: ignition::math::Vector3d magField;

        private: ignition::math::Vector3d AngVelocity;
        private: ignition::math::Quaterniond Orientation;
        private: common::Time currentTime;
    };
    GZ_REGISTER_SENSOR_PLUGIN(myMagnetometerPlugin)
}
#endif
