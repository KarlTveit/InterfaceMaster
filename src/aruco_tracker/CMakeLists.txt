cmake_minimum_required(VERSION 2.8.3)
project(aruco_tracker)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)
add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  geometry_msgs
  sensor_msgs
  std_msgs
  genmsg
  image_transport
  cv_bridge
  tf2
  tf2_ros
)
find_package(realsense2 REQUIRED)
find_package( OpenCV 3 REQUIRED )
find_package(Eigen3 REQUIRED)
#find_package(opencv_aruco)
find_package(image_transport)
find_package(cv_bridge)


generate_messages(DEPENDENCIES std_msgs geometry_msgs sensor_msgs )
catkin_package(
  CATKIN_DEPENDS roscpp 
)

include_directories(${catkin_INCLUDE_DIRS})

add_executable(${PROJECT_NAME}_node src/main.cpp src/tracksimple.cpp src/IMU.cpp src/publish.cpp)

add_dependencies(${PROJECT_NAME}_node ${catkin_EXPORTED_TARGETS})

include_directories("/home/karlmt/Downloads/aruco-3.1.11/aruco_src/include/")
link_directories("/home/karlmt/Downloads/aruco-3.1.11/aruco_src/lib/")

file( GLOB SOURCES *.cc *.cpp *.hpp *.hh )
file(GLOB hdrs "${ARUCO_INCLUDE}/aruco/*.h*")
file(GLOB srcs "${ARUCO_SRC}/*.c*")
##add_library(aruco} STATIC "${hdrs}" "${srcs}")

set( CMAKE_CXX_FLAGS "-Wall -Wextra -std=c++11 -pthread -I/usr/include/eigen3/ -L/usr/local/libs \ -lopencv_objdetect \ " )
    ## to disable all warnings 
    ## set( CMAKE_CXX_FLAGS "" ) 
set( CMAKE_CXX_FLAGS_DEBUG "-g -O0" )
set( CMAKE_CXX_FLAGS_RELEASE "-O3" )
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON) #...is required...
set(CMAKE_CXX_EXTENSIONS ON) #...with compiler extensions like gnu++11


include_directories(${EIGEN_INCLUDE_DIR})
add_definitions(${EIGEN_DEFINITIONS})


target_link_libraries(${PROJECT_NAME}_node
	${EIGEN3_INCLUDE_DIR}
	${realsense2_LIBRARY}
	${OpenCV_LIBS} 
  	${catkin_LIBRARIES}
  	opencv_aruco
  	${image_transport}
  	${cv_bridge}
  	
)
