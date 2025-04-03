# Install script for directory: /home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE PROGRAM FILES "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/_setup_util.py")
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
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE PROGRAM FILES "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/env.sh")
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
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/setup.bash"
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/local_setup.bash"
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
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/setup.sh"
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/local_setup.sh"
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
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/setup.zsh"
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/local_setup.zsh"
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
file(INSTALL DESTINATION "/home/liu/zt_data_get_ws/install" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/.rosinstall")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fixposition_driver_ros1/msg" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/Speed.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/WheelSensor.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/GnssSats.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/NMEA.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/eoe.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/gnssant.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/gnsscorr.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/imubias.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/llh.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/odomenu.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/odometry.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/odomsh.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/odomstatus.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/text.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/fpa/tp.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gpgga.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gpgll.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gngsa.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gpgst.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gxgsv.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gphdt.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gprmc.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gpvtg.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/nmea/gpzda.msg"
    "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/msg/extras/CovWarn.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fixposition_driver_ros1/cmake" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/fixposition_driver_ros1-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/include/fixposition_driver_ros1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/share/roseus/ros/fixposition_driver_ros1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/share/common-lisp/ros/fixposition_driver_ros1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/share/gennodejs/ros/fixposition_driver_ros1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/lib/python3/dist-packages/fixposition_driver_ros1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/lib/python3/dist-packages/fixposition_driver_ros1")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/fixposition_driver_ros1.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fixposition_driver_ros1/cmake" TYPE FILE FILES "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/fixposition_driver_ros1-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fixposition_driver_ros1/cmake" TYPE FILE FILES
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/fixposition_driver_ros1Config.cmake"
    "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/catkin_generated/installspace/fixposition_driver_ros1Config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fixposition_driver_ros1" TYPE FILE FILES "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fixposition_driver_ros1" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/include/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1" TYPE EXECUTABLE FILES "/home/liu/zt_data_get_ws/devel/.private/fixposition_driver_ros1/lib/fixposition_driver_ros1/fixposition_driver_ros1")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1"
         OLD_RPATH "/opt/ros/noetic/lib:/home/liu/zt_data_get_ws/devel/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/fixposition_driver_ros1/fixposition_driver_ros1")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/fixposition_driver_ros1" TYPE DIRECTORY FILES "/home/liu/zt_data_get_ws/src/fix_positon_ros1/src/fixposition_driver/fixposition_driver_ros1/launch")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/gtest/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/liu/zt_data_get_ws/build/fixposition_driver_ros1/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
