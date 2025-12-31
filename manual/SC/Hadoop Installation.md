<h1 align="center">
  <br>
  <strong> Eclipse 安装指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Hadoop%20Installation.md"> 简体中文 </a> ·
  <a href="../EN/Hadoop%20Installation_en.md"> English </a>
</p>

1. **确认 Java 环境**  
   在`Master`服务器上输入`java -version`查询 Java 版本信息，确认 Java 版本与 Hadoop 适配。操作如图：  
   **注：**
   Hadoop 推荐的 JDK 版本为 8 或者 11。
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P1.png" width="60%">
</p>

2. **确认安装包**  
   在`用户根目录`上输入`ls`查询安装包版本是否正确版本信息。操作如图：  
   **注：**
   `用户根目录`是Xshell 连接 Master 服务器的默认地址，也就是`/home/user/`目录，其中`user`是你的用户名，可以使用`cd /home/user/`或者`cd ~`返回用户根目录。
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P2.png" width="60%">
</p>

3. **解压安装包**  
   输入`tar -zxvf hadoop-3.4.2.tar.gz`解压安装包，使用`ls`确认解压是否成功,出现`Hadoop-3.4.2`文件夹说明成功。操作如图：  
   **注：**
   将`hadoop-3.4.2.tar.gz`改为实际的安装包名称。
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P3.png" width="60%">
</p>

4. **配置环境变量**  
   输入`vim /home/user/.bash_profile`编辑环境变量文件，先按下键盘上的`i`键进入编辑状态，再根据[环境变量文件](../../notes/home/user/.bash_profile)在原有的`Java 环境变量`后面添加`Hadoop 的环境变量`，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存，输入`source /home/user/.bash_profile`使环境变量生效。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P4.png" width="60%">
</p>

5. **验证安装**  
   输入`hadoop version`查询安装详情，出现例如`Hadoop 3.4.2`的版本信息表示安装成功。操作如图：
<p align="center">
  <img src="../../image/Hadoop%20Installation%20Diagram/P5.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
