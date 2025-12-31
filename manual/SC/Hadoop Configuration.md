<h1 align="center">
  <br>
  <strong> Eclipse 安装指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Hadoop%20Configuration.md"> 简体中文 </a> ·
  <a href="../EN/Hadoop%20Configuration_en.md"> English </a>
</p>

1. **配置 core-site.xml 文件**  
   输入`vim $HADOOP_HOME/etc/hadoop/core-site.xml`编辑环境变量文件，先按下键盘上的`i`键进入编辑状态，再根据[环境变量文件](../../notes/home/user/.bash_profile)在原有的`Java 环境变量`后面添加`Hadoop 的环境变量`，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存，输入`source /home/user/.bash_profile`使环境变量生效。操作如图：  
   **注：**
   注意将`/home/user/`中的`user`改为实际的系统用户名
<p align="center">
  <img src="../../image/Hadoop%20Configuration%20Diagram/P.png" width="60%">
</p>


---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
