<h1 align="center">
  <br>
  <strong> Spark 安装指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Spark%20Installation.md"> 简体中文 </a> ·
  <a href="../EN/Spark%20Installation_en.md"> English </a>
</p>

1. **确认安装包**  
   在`用户根目录`上输入`ls`查询安装包的版本是否是正确的版本，出现例如`spark-3.5.7-bin-hadoop3.tgz`的安装包说明安装包正确。操作如图：  
   **注：**
   `用户根目录`是 Xshell 连接 Master 服务器的默认地址，也就是`/home/user/`目录，其中`user`是你的用户名，可以使用`cd /home/user/`或者`cd ~`返回用户根目录。
<p align="center">
  <img src="../../image/Spark%20Installation%20Diagram/P1.png" width="60%">
</p>

2. **解压安装包**  
   输入`tar -zxvf spark-3.5.7-bin-hadoop3.tgz`解压安装包，使用`ls`确认解压是否成功,出现例如`spark-3.5.7-bin-hadoop3`的文件夹说明成功。操作如图：  
   **注：**
   将`spark-3.5.7-bin-hadoop3.tgz`改为实际的安装包名称。
<p align="center">
  <img src="../../image/Spark%20Installation%20Diagram/P2.png" width="60%">
</p>

3. **文件夹重命名**  
   输入`mv spark-3.5.7-bin-hadoop3 Spark`将文件夹重命名为`Spark`，使用`ls`确认重命名是否成功,出现例如`Spark`的文件夹说明成功。操作如图：  
<p align="center">
  <img src="../../image/Spark%20Installation%20Diagram/P3.png" width="60%">
</p>

4. **配置环境变量**  
   输入`vim /home/user/.bash_profile`编辑环境变量文件，先按下键盘上的`i`键进入编辑状态，再根据[环境变量文件](../../notes/home/user/.bash_profile)在原有的`Hadoop 环境变量`后面添加`Spark 的环境变量`，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存，输入`source /home/user/.bash_profile`使环境变量生效。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名
<p align="center">
  <img src="../../image/Spark%20Installation%20Diagram/P4.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Spark%20Installation%20Diagram/P5.png" width="60%">
</p>

4. **验证安装**  
   输入`spark-shell --version`查询安装详情，出现例如`version 3.5.7`的版本信息表示安装成功。操作如图：
<p align="center">
  <img src="../../image/Spark%20Installation%20Diagram/P6.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
