cmake_minimum_required(VERSION 2.8 FATAL_ERROR)

# Find Gazebo
find_package(gazebo REQUIRED)
include_directories(${GAZEBO_INCLUDE_DIRS})
link_directories(${GAZEBO_LIBRARY_DIRS})
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${GAZEBO_CXX_FLAGS}")

# ROS
find_package(roscpp REQUIRED)
find_package(std_msgs REQUIRED)
include_directories(${roscpp_INCLUDE_DIRS})
include_directories(${std_msgs_INCLUDE_DIR})

# Build our plugins
add_library(my_pioneer2dx_plugin SHARED my_pioneer2dx_plugin.cc)
target_link_libraries(my_pioneer2dx_plugin ${GAZEBO_LIBRARIES} ${roscpp_LIBRARIES})

add_library(velodyne_plugin SHARED velodyne_plugin.cc)
target_link_libraries(velodyne_plugin ${GAZEBO_LIBRARIES} ${roscpp_LIBRARIES})

add_library(pose_plugin SHARED pose_plugin.cc)
target_link_libraries(pose_plugin ${GAZEBO_LIBRARIES} ${roscpp_LIBRARIES})
