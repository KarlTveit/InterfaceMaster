# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;sensor_msgs;dynamic_reconfigure;sensor_fusion_comm".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lssf_core".split(';') if "-lssf_core" != "" else []
PROJECT_NAME = "ssf_core"
PROJECT_SPACE_DIR = "/home/karlmt/catkin_ws/install"
PROJECT_VERSION = "0.1.0"
