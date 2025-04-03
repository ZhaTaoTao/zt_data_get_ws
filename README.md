# 数据采集一键启动包

    适用于jetson agx orin(jectpack 5.1.2)。
    
## 1.使用方法

    下载后，删除编译的 devel 和 build 目录重新编译，编译命令为：
    
    catkin build fixposition_driver_ros1 rslidar_sdk zed_wrapper
    
    编译成功后，在当前工作目录下，执行如下命令：
    
    source ./devel/setup.bash
    roslaunch ./launch/data_get_main.launch
    
    便可一键启动数据采集。

## 2.查看是否能成功采集数据

    将车开到室外开阔地带，从浏览器进入 192.168.1.103 ，观察下方8个长条，不能出现红色长条，这是用于检测是否能够正确获取定位。
![image](https://github.com/ZhaTaoTao/zt_data_get_ws/blob/master/image/image1.png)

    打开 rviz，从 topic 中添加 PointCound2 话题，并将上面的 frame 设置为 rslidar，看看能否看到点云，能看到就是正常的。
![image](https://github.com/ZhaTaoTao/zt_data_get_ws/blob/master/image/image2.png)
    
    继续在 rviz 中，从 topic 中添加 image 话题，看看相机是否显示正常，若正常，则说明程序启动没问题。
![image](https://github.com/ZhaTaoTao/zt_data_get_ws/blob/master/image/image3.png)

## 3.录制 rosbag 数据

    自己先建一个用来存储自己数据的文件夹，将 utils 中的 record.sh 脚本复制到自己的文件夹；
    然后在文件夹中打开终端，chmod +x record.sh 赋予执行权限；
    然后 ./record.sh 执行该脚本，就可以开始录制数据了，结束时请在该终端按 ctrl + c 暂停脚本；
    录制的 rosbag 就保存在了你自己建的文件夹中。

## 4.注意
    注意：这里录制 rosbag 比较占用磁盘空间，不要长时间录制。
