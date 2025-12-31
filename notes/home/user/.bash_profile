PATH=$PATH:$HOME/bin

export PATH

# ===============================
# 下面是 Java 的配置，请在配置 Java 的时候添加
# ===============================
export JAVA_HOME=/usr/java/jdk-11.0.29  #注意这里的“/usr/java/jdk-11.0.29”改为实际的安装目录
export JRE_HOME=$JAVA_HOME
export PATH=$JAVA_HOME/bin:$PATH

# ===============================
# 下面是 Hadoop 的配置，请在配置hadoop的时候添加
# ===============================
export HADOOP_HOME=/home/user/hadoop-3.4.2  #注意这里的“/home/user/hadoop-3.4.2”改为实际的安装目录
export HADOOP_CONF_DIR=$HADOOP_HOME/etc/hadoop
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_OPTS="-Djava.library.path=$HADOOP_HOME/lib/native"
export YARN_HOME=$HADOOP_HOME
export MAPRED_HOME=$HADOOP_HOME
export HDFS_HOME=$HADOOP_HOME
