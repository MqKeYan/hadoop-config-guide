<h1 align="center">
  <br>
  <strong> Spark 子机配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Hadoop%20Worker%20Node%20Configuration.md"> 简体中文 </a> ·
  <a href="../EN/Hadoop%20Worker%20Node%20Configuration_en.md"> English </a>
</p>

1. **文件传输**  
   连接`HadoopMaster`服务器，分别使用`scp -r /home/user/Spark user@Slave1:~/`和`scp -r /home/user/Spark user@Slave2:~/`将配置好的 Spark 程序传输到服务器子机的根目录。操作如图：

2. **配置环境变量**  
   输入`vim /home/user/.bash_profile`编辑环境变量文件，先按下键盘上的`i`键进入编辑状态，再根据[环境变量文件](../../notes/home/user/.bash_profile)在原有的`Hadoop 环境变量`后面添加`Spark 的环境变量`，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存，输入`source /home/user/.bash_profile`使环境变量生效。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名
<p align="center">
  <img src="../../image/Spark%20Worker%20Node%20Configuration%20Diagram/P.png" width="60%">
</p>

3. **验证安装**  
   输入`spark-shell --version`查询安装详情，出现例如`version 3.5.7`的版本信息表示安装成功。操作如图：
<p align="center">
  <img src="../../image/Spark%20Worker%20Node%20Configuration%20Diagram/P.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Spark%20Worker%20Node%20Configuration%20Diagram/P.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
