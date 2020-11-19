#ifndef _MY_GPS_PLUGIN_HH_
#define _MY_GPS_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/sensors/sensors.hh>
#include <gazebo/sensors/GpsSensor.hh>
#include <gazebo/common/Time.hh>

#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"

#include <ignition/math/Angle.hh>

#include "pioneer2dx_ros/myGPSMessage.h"
namespace gazebo
{
    class myGPSPlugin : public SensorPlugin
    {
        public: myGPSPlugin(): SensorPlugin(){}

        public: virtual void Load(sensors::SensorPtr _sensor, sdf::ElementPtr _sdf)
        {
            std::cout<<"My plugin for the GPS sensor is taking place.\n"<<std::endl;

            this->sensor = std::dynamic_pointer_cast<sensors::GpsSensor>(_sensor);
            if(this->sensor == NULL)
            {
                std::cerr << "\nFailed to cast _sensor pointer into sensors::GpsSensor\n";
            }

            if(!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc,argv,"gazebo_client", ros::init_options::NoSigintHandler);
            }
            this->updateConnection = this->sensor->ConnectUpdated(std::bind(&myGPSPlugin::OnUpdate, this));

            this->rosNode.reset(new ros::NodeHandle("gazebo_client"));
            this->rosPublisher = this->rosNode->advertise<pioneer2dx_ros::myGPSMessage>("GPSReadings",100);

            ros::Rate loop_rate(10);
            //this->GPSOwner = this->sensor->ScopedName();
            //this->GPSOwner = this->sensor->Name();
            this->GPSOwner = this->sensor->ParentName();
            this->previousTime = this->sensor->LastMeasurementTime();
            this->prevLatitude = this->sensor->Latitude();
            this->prevLongitude = this->sensor->Longitude();
            this->prevAltitude = this->sensor->Altitude();

            this->sensor->SetActive(true);
        }

        public: virtual void OnUpdate()
        {
            pioneer2dx_ros::myGPSMessage MsgH;
            float timeDiff = 1.0;
            //this->sensor->Update(true);

            this->currentTime = this->sensor->LastMeasurementTime();

            timeDiff = this->currentTime.Float() - this->previousTime.Float();

            this->Latitude = this->sensor->Latitude();
            this->Longitude = this->sensor->Longitude();
            this->Altitude = this->sensor->Altitude();

            MsgH.gpsOwner = this->GPSOwner;
            MsgH.sec = this->currentTime.Float();
            MsgH.nsec = (float) common::Time::SecToNano(this->currentTime.Double());
            MsgH.latitude_deg = this->Latitude.Degree();
            MsgH.longitude_deg = this->Longitude.Degree();
            MsgH.altitude = this->Altitude;

            MsgH.velocity_east = (this->Latitude.Degree() - this->prevLatitude.Degree())/timeDiff;
            MsgH.velocity_north =(this->Longitude.Degree() - this->prevLongitude.Degree())/timeDiff;
            MsgH.velocity_up = (this->Altitude - this->prevAltitude)/timeDiff;

            this->rosPublisher.publish(MsgH);

            this->previousTime = this->currentTime;
            this->prevLatitude = this->Latitude;
            this->prevLongitude = this->Longitude;
            this->prevAltitude = this->Altitude;
            
            ros::spinOnce();
        }
        private: sensors::GpsSensorPtr sensor;
        private: event::ConnectionPtr updateConnection;
        private: std::unique_ptr<ros::NodeHandle> rosNode;
        private: ros::Publisher rosPublisher;
        private: ros::CallbackQueue rosQueueu;

        private: std::string GPSOwner;
        private: ignition::math::Angle Latitude;
        private: ignition::math::Angle Longitude;
        private: ignition::math::Angle prevLatitude;
        private: ignition::math::Angle prevLongitude;
        private: common::Time currentTime;
        private: common::Time previousTime;
        private: double Altitude;
        private: double prevAltitude;
    };

    GZ_REGISTER_SENSOR_PLUGIN(myGPSPlugin)
}

#endif
