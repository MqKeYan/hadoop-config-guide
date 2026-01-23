########################
# Java
########################
# 确保与 Hadoop 使用同一版本
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk

########################
# Spark 基本路径
########################
export SPARK_HOME=/opt/spark
export SPARK_CONF_DIR=$SPARK_HOME/conf
export SPARK_LOG_DIR=$SPARK_HOME/logs
export SPARK_PID_DIR=$SPARK_HOME/pids

########################
# Hadoop & YARN（核心）
########################
export HADOOP_HOME=/opt/hadoop
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
# 避免绑定到 localhost
export SPARK_LOCAL_IP=0.0.0.0

########################
# Driver / Executor JVM 参数
########################
export SPARK_DRIVER_OPTS="
-Duser.timezone=Asia/Shanghai
-Dfile.encoding=UTF-8
"

export SPARK_EXECUTOR_OPTS="
-Duser.timezone=Asia/Shanghai
-Dfile.encoding=UTF-8
"

########################
# 日志配置
########################
# 指定 log4j 配置文件（Spark 3.x 默认 log4j2）
export SPARK_LOG_CONF_DIR=$SPARK_HOME/conf
export SPARK_LOG4J_CONF=log4j2.properties

########################
# Python（如果你以后用 PySpark）
########################
# 不用 PySpark 可忽略
export PYSPARK_PYTHON=/usr/bin/python3
export PYSPARK_DRIVER_PYTHON=/usr/bin/python3

########################
# 历史服务器（可选）
########################
# 只有你打算启动 HistoryServer 才需要
# export SPARK_HISTORY_OPTS="
# -Dspark.history.fs.logDirectory=hdfs:///spark-logs
# "

########################
# 其他安全/稳定性设置（可选）
########################
# 避免 Linux 句柄不足
export SPARK_DAEMON_JAVA_OPTS="
-Djava.net.preferIPv4Stack=true
"
