# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/home/karlmt/catkin_ws/src/ethzasl_msf/msf_core/include;/home/karlmt/catkin_ws/src/ethzasl_msf/msf_timing/include;/opt/ros/melodic/include;/opt/ros/melodic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp;/usr/include;/usr/include/eigen3".split(';') if "${prefix}/include;/home/karlmt/catkin_ws/src/ethzasl_msf/msf_core/include;/home/karlmt/catkin_ws/src/ethzasl_msf/msf_timing/include;/opt/ros/melodic/include;/opt/ros/melodic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp;/usr/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;msf_core;geometry_msgs;sensor_fusion_comm".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lpose_distorter".split(';') if "-lpose_distorter" != "" else []
PROJECT_NAME = "msf_updates"
PROJECT_SPACE_DIR = "/home/karlmt/catkin_ws/install"
PROJECT_VERSION = "1.0.1"
