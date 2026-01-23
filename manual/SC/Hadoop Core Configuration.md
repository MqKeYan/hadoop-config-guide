<h1 align="center">
  <br>
  <strong> Hadoop 核心组件配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Hadoop%20Core%20Configuration.md"> 简体中文 </a> ·
  <a href="../EN/Hadoop%20Core%20Configuration_en.md"> English </a>
</p>

1. **配置 core-site.xml 文件**  
   输入`vim $HADOOP_HOME/etc/hadoop/core-site.xml`编辑 core-site.xml 文件，先按下键盘上的`i`键进入编辑状态，再根据[core-site.xml 文件](../../notes/home/user/hadoop-3.4.2/etc/hadoop/core-site.xml)编辑文件，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存。输入`mkdir -p /home/user/hadoopdata`创建临时数据储存目录。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名，不要复制 core-site.xml 文件里面的注释，创建的文件夹地址改为实际需要创建的。
<p align="center">
  <img src="../../image/Hadoop%20Core%20Configuration%20Diagram/P1.png" width="60%">
</p>

2. **配置 hdfs-site.xml 文件**  
   输入`vim $HADOOP_HOME/etc/hadoop/hdfs-site.xml`编辑 hdfs-site.xml 文件，先按下键盘上的`i`键进入编辑状态，再根据[hdfs-site.xml 文件](../../notes/home/user/hadoop-3.4.2/etc/hadoop/hdfs-site.xml)编辑文件，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存。分别输入`mkdir -p /home/user/hadoopdata/hdfs/namenode`和`mkdir -p /home/user/hadoopdata/hdfs/datanode`创建数据储存目录。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名，不要复制 hdfs-site.xml 文件里面的注释，创建的文件夹地址改为实际需要创建的。
<p align="center">
  <img src="../../image/Hadoop%20Core%20Configuration%20Diagram/P2.png" width="60%">
</p>

3. **配置 yarn-site.xml 文件**  
   输入`vim $HADOOP_HOME/etc/hadoop/yarn-site.xml`编辑 yarn-site.xml 文件，先按下键盘上的`i`键进入编辑状态，再根据[yarn-site.xml 文件](../../notes/home/user/hadoop-3.4.2/etc/hadoop/yarn-site.xml)编辑文件，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存。操作如图：  
   **注：**
   注意不要复制 yarn-site.xml 文件里面的注释，创建的文件夹地址改为实际需要创建的。
<p align="center">
  <img src="../../image/Hadoop%20Core%20Configuration%20Diagram/P3.png" width="60%">
</p>

4. **配置 mapred-site.xml 文件**  
   输入`vim $HADOOP_HOME/etc/hadoop/mapred-site.xml`编辑 mapred-site.xml 文件，先按下键盘上的`i`键进入编辑状态，再根据[mapred-site.xml 文件](../../notes/home/user/hadoop-3.4.2/etc/hadoop/mapred-site.xml)编辑文件，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存。操作如图：  
   **注：**
   注意不要复制 mapred-site.xml 文件里面的注释，创建的文件夹地址改为实际需要创建的。
<p align="center">
  <img src="../../image/Hadoop%20Core%20Configuration%20Diagram/P4.png" width="60%">
</p>

5. **配置 workers 文件**  
   输入`vim $HADOOP_HOME/etc/hadoop/workers`编辑 workers 文件，先按下键盘上的`i`键进入编辑状态，再根据[workers 文件](../../notes/home/user/hadoop-3.4.2/etc/hadoop/workers)编辑文件，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存。操作如图：  
   **注：**
   在 Hadoop 3.x 中将原本的 slaves 改为了 workers，不要复制 workers 文件里面的注释，创建的文件夹地址改为实际需要创建的。
<p align="center">
  <img src="../../image/Hadoop%20Core%20Configuration%20Diagram/P5.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
