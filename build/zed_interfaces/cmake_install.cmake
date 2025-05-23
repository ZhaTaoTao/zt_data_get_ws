# Install script for directory: /home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/liu/zt_data_get_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/liu/zt_data_get_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE PROGRAM FILES "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/liu/zt_data_get_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE PROGRAM FILES "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/liu/zt_data_get_ws/install/setup.bash;/home/liu/zt_data_get_ws/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/setup.bash"
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/liu/zt_data_get_ws/install/setup.sh;/home/liu/zt_data_get_ws/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/setup.sh"
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/liu/zt_data_get_ws/install/setup.zsh;/home/liu/zt_data_get_ws/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/setup.zsh"
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/liu/zt_data_get_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces/msg" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Df.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox2Di.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/BoundingBox3D.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Df.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint2Di.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/Keypoint3D.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/Object.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/ObjectsStamped.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton2D.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/Skeleton3D.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/RGBDSensors.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/PlaneStamped.msg"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/msg/PosTrackStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces/srv" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/set_pose.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/reset_odometry.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/reset_tracking.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/start_svo_recording.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/stop_svo_recording.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/start_remote_stream.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/stop_remote_stream.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/set_led_status.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/toggle_led.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/start_3d_mapping.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/stop_3d_mapping.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/save_3d_map.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/start_object_detection.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/stop_object_detection.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/save_area_memory.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/set_roi.srv"
    "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/srv/reset_roi.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces/cmake" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/zed_interfaces-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/zed_interfaces/include/zed_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/zed_interfaces/share/roseus/ros/zed_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/zed_interfaces/share/common-lisp/ros/zed_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/zed_interfaces/share/gennodejs/ros/zed_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/liu/zt_data_get_ws/devel/.private/zed_interfaces/lib/python3/dist-packages/zed_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/zed_interfaces/lib/python3/dist-packages/zed_interfaces")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/zed_interfaces.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces/cmake" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/zed_interfaces-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces/cmake" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/zed_interfacesConfig.cmake"
    "/home/liu/zt_data_get_ws/build/zed_interfaces/catkin_generated/installspace/zed_interfacesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces" TYPE FILE FILES "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/zed_interfaces" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/src/zed2i/src/zed2i/zed-ros-wrapper/zed-ros-interfaces/meshes")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/liu/zt_data_get_ws/build/zed_interfaces/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/liu/zt_data_get_ws/build/zed_interfaces/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
