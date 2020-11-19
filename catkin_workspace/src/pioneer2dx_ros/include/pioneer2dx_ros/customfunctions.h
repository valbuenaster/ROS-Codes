#ifndef CUSTOMFUNCTIONS_H_
#define CUSTOMFUNCTIONS_H_

#include <math.h>
#include <list>

#include "std_msgs/Float64MultiArray.h"
#include "pioneer2dx_ros/myHokuyoMessage.h"

#define TOL_1 0.1

std::vector<int> Landmaks_Indexes(const pioneer2dx_ros::myHokuyoMessage::ConstPtr &hkyReading);

std::list<int> findSlopeSignchange(pioneer2dx_ros::myHokuyoMessage::_ranges_type &msg, double angRes, int Size);
std::list<int> findSlopechange(pioneer2dx_ros::myHokuyoMessage::_ranges_type &msg, double angRes, int Size);
double calculatingLittleTriangle(double c_slope,double p_slope,double angRes);
std::vector<int> findEndOfObstacle(const std::vector<int> &index,pioneer2dx_ros::myHokuyoMessage::_ranges_type &vRadii);
std::list<int> returnIndexesLandmarksFeatures(std::vector<int> &Is,std::vector<int> &Im);
double sign(double val);
double setVPrec(double val,int OrdMag);
template <class T>
std::list<T> vector2list(std::vector<T> &vect);
template <class T>
std::vector<T> list2vector(std::list<T> &lst);


#endif
