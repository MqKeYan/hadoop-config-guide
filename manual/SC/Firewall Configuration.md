<h1 align="center">
  <br>
  <strong> 防火墙配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Firewall%20Configuration.md"> 简体中文 </a> ·
  <a href="../EN/Firewall%20Configuration_en.md"> English </a>
</p>

1. **配置主机的防火墙**  
   输入`su`进入 root 用户，依次输入`systemctl enable firewalld --now`、`firewall-cmd --permanent --add-port={22,9000,9870,8030-8033,8080,18080}/tcp`和`firewall-cmd --reload`配置防火墙运行进出的端口，然后输入`firewall-cmd --permanent --list-ports`验证端口配置。操作如图：  
   **注：**
   注意将`22,9000,9870,8030-8033,8080,18080`改为实际的系统端口。
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P.png" width="60%">
</p>

2. **配置 spark-defaults.conf 文件**  
   输入`vim /home/user/Spark/conf/spark-defaults.conf`编辑 spark-defaults.conf 文件，先按下键盘上的`i`键进入编辑状态，再根据[spark-defaults.conf 文件](../../notes/home/user/Spark/conf/spark-defaults.conf)编辑文件，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存。输入`hdfs dfs -mkdir /spark-logs`创建创建日志目录,再输入`hdfs dfs -chmod 777 /spark-logs`设置文件夹权限。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名，不要复制 spark-defaults.conf 文件里面的注释，创建的文件夹地址改为实际需要创建的。
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P.png" width="60%">
</p>


---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
