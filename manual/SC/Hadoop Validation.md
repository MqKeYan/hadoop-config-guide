<h1 align="center">
  <br>
  <strong> Hadoop 验证指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Hadoop%20Validation.md"> 简体中文 </a> ·
  <a href="../EN/Hadoop%20Validation_en.md"> English </a>
</p>

1. **验证环境变量**  
   分别在服务器各个节点上使用`echo $HADOOP_HOME`指令检查目录配置是否正确。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P1.png" width="60%">
</p>

2. **格式化文件系统**  
   在`Msater`上使用`hdfs namenode -format`指令格式化文件系统`NameNode`。操作如图：  
   **注**
   `hdfs namenode -format`指令只能在启动前执行格式化一次，DataNode 会因 ClusterID 不一致全部拒绝注册，只能删数据重来
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P2.png" width="60%">
</p>

hdfs namenode -format

3. **启动 Hadoop**  
   在`Msater`上分别使用`start-dfs.sh`和`start-yarn.sh`指令启动`HDFS`和`YARN`。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P3.png" width="60%">
</p>

4. **进程运行验证**  
   分别在服务器各个节点上使用`jps`检查进程是否正常启动，`Master`节点至少要包含`NameNode`、`SecondaryNameNode`和`ResourceManager`等输出，`Slave1`和`Slave2`节点至少要包含`DataNode`和`NodeManager`等输出。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P4.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P5.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P6.png" width="60%">
</p>

5. **Web 运行验证**  
   在`Master`的`Firefox`浏览器上分别进入`http://Master:9870`和`http://Master:8088`网页检查 HDFS 和 YARN 的 Web 访问是否正常。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P7.png" width="80%">
</p>
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P8.png" width="80%">
</p>
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P9.png" width="80%">
</p>

6. **关闭 Hadoop**  
   在`Msater`上分别使用`stop-dfs.sh`和`stop-yarn.sh`指令关闭`HDFS`和`YARN`。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P10.png" width="60%">
</p>

7. **进程关闭验证**  
   分别在服务器各个节点上使用`jps`检查进程是否正常关闭，`Master`节点没有出现`NameNode`、`SecondaryNameNode`和`ResourceManager`等输出，`Slave1`和`Slave2`节点没有出现`DataNode`和`NodeManager`等输出。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P11.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P12.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Hadoop%20Validation%20Diagram/P13.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
