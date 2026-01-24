########################
# Java
########################
# 确保与 Hadoop 使用同一版本
export JAVA_HOME=/usr/java/jdk-11.0.29

########################
# Spark 基本路径
########################
export SPARK_HOME=/home/user/Spark
export SPARK_CONF_DIR=$SPARK_HOME/conf
export SPARK_LOG_DIR=$SPARK_HOME/logs
export SPARK_PID_DIR=$SPARK_HOME/pids

########################
# Hadoop & YARN（核心）
########################
export HADOOP_HOME=/home/user/hadoop-3.4.2
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export YARN_CONF_DIR=$HADOOP_HOME/etc/hadoop

########################
# Spark on YARN 关键类路径
########################
# 防止 ClassNotFoundException（非常重要）
export SPARK_DIST_CLASSPATH=$($HADOOP_HOME/bin/hadoop classpath)

########################
# 网络与端口
########################
# 绑定主机的IP地址
export SPARK_LOCAL_IP=0.0.0.0  # 请改为你的主机的实际IP地址
