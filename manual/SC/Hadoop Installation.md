<h1 align="center">
  <br>
  <strong> Eclipse 安装指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Eclipse%20Installation.md"> 简体中文 </a> ·
  <a href="../EN/Eclipse%20Installation_en.md"> English </a>
</p>

1. **确认 Java 环境**  
   在`Master`服务器上输入`java -version`查询 Java 版本信息，确认 Java 版本与 Hadoop 适配。操作如图：  
   **注：**
   Hadoop 推荐的 JDK 版本为 8 或者 11。
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P.png" width="60%">
</p>

2. **确认安装包**  
   在`用户根目录`上输入`ls`查询安装包版本是否正确版本信息。操作如图：  
   **注：**
   `用户根目录`是Xshell 连接 Master 服务器的默认地址，也就是`/home/user/`目录，其中`user`是你的用户名，可以使用`cd /home/user/`或者`cd ~`返回用户根目录。
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P.png" width="60%">
</p>

3. **解压安装包**  
   输入`tar -zxvf hadoop-3.4.2.tar.gz`解压安装包，使用`ls`确认解压是否成功,出现`Hadoop-3.4.2`文件夹说明成功。操作如图：  
   **注：**
   将`hadoop-3.4.2.tar.gz`改为实际的安装包名称。
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P.png" width="60%">
</p>



---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
