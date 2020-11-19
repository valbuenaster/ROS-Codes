#ifndef _MY_PIONEER2DX_PLUGIN_HH_
#define _MY_PIONEER2DX_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>

#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"
#include "std_msgs/Float64MultiArray.h" //Change for a 2-D vector
#include "std_msgs/Float64.h"

#define N_INPUTS 2

namespace gazebo
{
    class myPioneer2DXPlugin : public ModelPlugin
    {
        public:myPioneer2DXPlugin()
        {}

        public: virtual void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
        {
            std::cerr <<"\nMy Pioneer2DX plugin is attached to the model ["<<_model->GetName()<<"]\n";

            this->model = _model;

            this->jointWheelRight = _model->GetJoint("pioneer2dx::right_wheel_hinge");
            this->jointWheelLeft = _model->GetJoint("pioneer2dx::left_wheel_hinge");

            std::cout<<"Name joint ["<< this->jointWheelRight->GetName() <<"]\n";
            std::cout<<"Name joint ["<< this->jointWheelLeft->GetName() <<"]\n";

            this->mutualPID = common::PID(1.0, 0.0, 0.0);

            this->model->GetJointController()->SetVelocityPID(this->jointWheelRight->GetScopedName(),this->mutualPID); 
            this->model->GetJointController()->SetVelocityPID(this->jointWheelLeft->GetScopedName(),this->mutualPID);

            this->model->GetJointController()->SetVelocityTarget(this->jointWheelRight->GetScopedName(),0.0);
            this->model->GetJointController()->SetVelocityTarget(this->jointWheelLeft->GetScopedName(),0.0);

            if(!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc,argv,"My_gazebo_client",ros::init_options::NoSigintHandler);
            }
            this->rosNode.reset(new ros::NodeHandle("My_gazebo_client"));

            //Remember, change the 'variable' to be a 2-D vector
            ros::SubscribeOptions so = ros::SubscribeOptions::create<std_msgs::Float64MultiArray>(
                                                              "/"+this->model->GetName()+"/wheels_velocity",
                                                              1,
                                                              boost::bind(&myPioneer2DXPlugin::OnRosMsg, this, _1),
                                                              ros::VoidPtr(), 
                                                              &this->rosQueue);

            this->rosSub = this->rosNode->subscribe(so);

            this->rosQueueThread = std::thread(std::bind(&myPioneer2DXPlugin::QueueThread,this));
            
        }

        public: void OnRosMsg(const std_msgs::Float64MultiArray::ConstPtr &_msg)
        {
            this->model->GetJointController()->SetVelocityTarget(this->jointWheelRight->GetScopedName(),_msg->data[0]);//_msg->data
            this->model->GetJointController()->SetVelocityTarget(this->jointWheelLeft->GetScopedName(),_msg->data[1]);//_msg->data
        }

        private: void QueueThread()
        {
            static const double timeout = 0.01;
            while(this->rosNode->ok())
            {
                this->rosQueue.callAvailable(ros::WallDuration(timeout));
            }
        } 

        private: physics::ModelPtr model;
        private: physics::JointPtr jointWheelRight;
        private: physics::JointPtr jointWheelLeft;
        private: common::PID mutualPID;

        private: std::unique_ptr<ros::NodeHandle> rosNode;
        private: ros::Subscriber rosSub;
        private: ros::CallbackQueue rosQueue;
        private: std::thread rosQueueThread;
    };

    GZ_REGISTER_MODEL_PLUGIN(myPioneer2DXPlugin)
}
#endif
