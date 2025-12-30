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
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P1.png" width="80%">
</p>

2. **环境变量设置**  
   输入`exit`退出 Root 账户，输入`vim /home/user/.bash_profile`（注意将`/home/user/`中的`user`改为实际的系统用户名）进入系统默认用户的环境变量文件编辑界面，先按下键盘上的`i`键进入编辑状态，再根据[编辑文件详情](../../notes/home/user/.bash_profile)在原文件末尾加上，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存（注意`:`为英文符号），输入`source /home/user/.bash_profile`使指令生效。输入`java -version`验证 JDK 是否安装成功，安装成功会有 Java 版本信息输出。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P2.png" width="80%">
</p>
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P3.png" width="80%">
</p>

3. **同步服务器子机**  
   分别在`Slave1`和`Slave2`子机上执行上面操作，完成 Java 配置。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P4.png" width="80%">
</p>
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P5.png" width="80%">
</p>
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P6.png" width="80%">
</p>
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P7.png" width="80%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
