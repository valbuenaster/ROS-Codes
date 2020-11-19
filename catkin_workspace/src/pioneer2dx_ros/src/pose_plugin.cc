#ifndef _POSE_PLUGIN_HH_
#define _POSE_PLUGIN_HH_

#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/transport/transport.hh>
#include <gazebo/msgs/msgs.hh>
#include <gazebo/common/common.hh>
#include <ignition/math/Pose3.hh>

#include <thread>
#include "ros/ros.h"
#include "ros/callback_queue.h"
#include "ros/subscribe_options.h"
#include "geometry_msgs/Vector3.h"
#include "geometry_msgs/Quaternion.h"
#include "pioneer2dx_ros/myPoseMessage.h"

namespace gazebo
{
    class PosePlugin: public WorldPlugin
    {
        public: PosePlugin() {}
        
        public: virtual void Load(physics::WorldPtr _parent,sdf::ElementPtr _sdf)
        {
            arrayModels = _parent->Models();
            this->N_Models = arrayModels.size();
            
            for(unsigned int ii = 0; ii< this->N_Models; ii++)
            {
                std::cout<<"Name : "<< arrayModels[ii]->GetName()<<std::endl;
            }
            
            this->nodeGZ = transport::NodePtr( new transport::Node());

            #if GAZEBO_MAJOR_VERSION < 8
            this->nodeGZ->Init(_parent->GetName());
            //std::string topicName = "~/" + _parent->GetName() + "/models_pose";
            #else
            this->nodeGZ->Init(_parent->Name());
            //std::string topicName = "~/" + _parent->Name() + "/models_pose";
            #endif

            std::string topicName = "~/pose/info";
            this->subsGZ = this->nodeGZ->Subscribe(topicName,&PosePlugin::OnMsg,this);
            this->pubGZ = this->nodeGZ->Advertise<msgs::Pose>("~/LuisPoseTopic");

            if(!ros::isInitialized())
            {
                int argc = 0;
                char **argv = NULL;
                ros::init(argc,argv,"PoseTopic_gazebo_client",ros::init_options::NoSigintHandler);
            }

            this->rosNode.reset(new ros::NodeHandle("PoseTopic_gazebo_client"));
            this->rosPublisher = this->rosNode->advertise<pioneer2dx_ros::myPoseMessage>("PoseTopic_gazebo_client",100);

            //ros::Rate loop_rate(60);
        }

        private: void OnMsg(ConstVector3dPtr &_msg)
        {
            for(unsigned int ii = 0; ii< this->N_Models; ii++)
            {
                pioneer2dx_ros::myPoseMessage Msg;
                ignition::math::Vector3d p;
                ignition::math::Quaterniond q;
                geometry_msgs::Vector3 pROS;
                geometry_msgs::Quaternion qROS;
                std::string NameModel = arrayModels[ii]->GetName();
                ignition::math::Pose3d pM = arrayModels[ii]->WorldPose();
                p = pM.Pos();
                q = pM.Rot();

                pROS.x=p.X();
                pROS.y=p.Y();
                pROS.z=p.Z();

                qROS.x=q.X();
                qROS.y=q.Y();
                qROS.z=q.Z();
                qROS.w=q.W();

                Msg.modelName = NameModel;
                Msg.modelPosition = pROS;
                Msg.modelOrientation = qROS;
                //std::cout<<"/n/nName : "<<NameModel<<"/n";
                //std::cout<<"p("<< p.X() <<","<< p.Y()<<","<< p.Z()<<
                //           "), q("<< q.W()<<","<< q.X() <<","<< q.Y()<<","<< q.Z()<<").\n";
                this->pubGZ->Publish(msgs::Convert(pM));
                this->rosPublisher.publish(Msg);

                ros::spinOnce();
            }
        }

        private: physics::Model_V arrayModels;
        private: transport::NodePtr nodeGZ;
        private: transport::SubscriberPtr subsGZ;
        private: transport::PublisherPtr pubGZ;
        private: int N_Models;  

        private: std::unique_ptr<ros::NodeHandle> rosNode;
        private: ros::Publisher rosPublisher;
        private: ros::CallbackQueue rosQueue;
        private: std::thread rosQueueThread;
    };
    GZ_REGISTER_WORLD_PLUGIN(PosePlugin)
}
#endif
