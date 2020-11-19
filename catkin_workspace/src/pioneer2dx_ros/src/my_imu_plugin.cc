#ifndef _MY_IMU_PLUGIN_HH_
#define _MY_IMU_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/sensors/sensors.hh>
#include <gazebo/sensors/ImuSensor.hh>
#include <gazebo/common/Time.hh>

#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"

#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/Quaternion.h"

#include "pioneer2dx_ros/myIMUMessage.h"

namespace gazebo
{
    class myIMUPlugin: public SensorPlugin
    {
        public: myIMUPlugin(): SensorPlugin(){}

        public: virtual void Load(sensors::SensorPtr _sensor, sdf::ElementPtr _sdf)
        {
            std::cout<<"My plugin for the IMU sensor is taking place.\n"<<std::endl;

            this->sensor = std::dynamic_pointer_cast<sensors::ImuSensor>(_sensor);
            if(this->sensor == NULL)
            {
                std::cerr << "\nFailed to cast _sensor pointer into sensors::ImuSensor\n";
            }

            if(!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc,argv,"gazebo_client", ros::init_options::NoSigintHandler);
            }
            this->updateConnection = this->sensor->ConnectUpdated(std::bind(&myIMUPlugin::OnUpdate, this));

            this->rosNode.reset(new ros::NodeHandle("gazebo_client"));
            this->rosPublisher = this->rosNode->advertise<pioneer2dx_ros::myIMUMessage>("IMUReadings",100);

            ros::Rate loop_rate(100);
            this->IMUOwner = this->sensor->ParentName();

            this->sensor->SetReferencePose();
            this->sensor->SetActive(true);            
        }

        public: virtual void OnUpdate()
        {
            pioneer2dx_ros::myIMUMessage MsgH;
            geometry_msgs::Quaternion rosQuat;
            geometry_msgs::Vector3 rosAngVel;
            geometry_msgs::Vector3 rosLinAcc;
            //this->sensor->Update(true);

            this->currentTime = this->sensor->LastMeasurementTime();
            this->LinAcceleration = this->sensor->LinearAcceleration();
            this->Orientation = this->sensor->Orientation();
            this->AngVelocity = this->sensor->AngularVelocity();

            rosQuat.x = this->Orientation.X();
            rosQuat.y = this->Orientation.Y();
            rosQuat.z = this->Orientation.Z();
            rosQuat.w = this->Orientation.W();

            rosAngVel.x = this->AngVelocity.X();
            rosAngVel.y = this->AngVelocity.Y();
            rosAngVel.z = this->AngVelocity.Z();

            rosLinAcc.x = this->LinAcceleration.X();
            rosLinAcc.y = this->LinAcceleration.Y();
            rosLinAcc.z = this->LinAcceleration.Z();

            MsgH.entity_name = this->IMUOwner;
            MsgH.sec = this->currentTime.Float();
            MsgH.nsec = (float) common::Time::SecToNano(this->currentTime.Double());
            MsgH.orientation = rosQuat;
            MsgH.angular_velocity = rosAngVel;
            MsgH.linear_acceleration = rosLinAcc;

            this->rosPublisher.publish(MsgH);
            ros::spinOnce();
        }
        private: sensors::ImuSensorPtr sensor;
        private: event::ConnectionPtr updateConnection;
        private: std::unique_ptr<ros::NodeHandle> rosNode;
        private: ros::Publisher rosPublisher;
        private: ros::CallbackQueue rosQueueu;

        private: std::string IMUOwner;
        private: ignition::math::Vector3d LinAcceleration;
        private: ignition::math::Vector3d AngVelocity;
        private: ignition::math::Quaterniond Orientation;
        private: common::Time currentTime;
    };

    GZ_REGISTER_SENSOR_PLUGIN(myIMUPlugin)
}
#endif
