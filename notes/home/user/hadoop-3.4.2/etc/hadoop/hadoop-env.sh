###
# Generic settings for HADOOP
###

# Technically, the only required environment variable is JAVA_HOME.
# All others are optional.  However, the defaults are probably not
# preferred.  Many sites configure these options outside of Hadoop,
# such as in /etc/profile.d

# The java implementation to use. By default, this environment
# variable is REQUIRED on ALL platforms except OS X!
export JAVA_HOME=/usr/java/jdk-11.0.29  #删除原本前面的“#”，添加Jdk的安装目录，注意/usr/java/jdk-11.0.29为实际的Jdk安装目录
