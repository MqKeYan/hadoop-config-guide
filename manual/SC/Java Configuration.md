<h1 align="center">
  <br>
  <strong> Java 配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Java%20Configuration.md"> 简体中文 </a> ·
  <a href="../EN/Java%20Configuration_en.md"> English </a>
</p>

1. **Root 账户模式**  
   在`Master`服务器上输入`su`并输入密码进入 Root 账户模式，将 JDK 安装到 Root 账户里面。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

2. **创建安装目录**  
   输入`mkdir /usr/java`创建`/usr/java`文件夹，JDK 将安装到该目录。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

3. **复制文件并验证**  
   输入`cp /home/user/jdk-11.0.29_linux-x64_bin.tar.gz /usr/java`（注意将`/home/user/`中的`user`改为实际的系统用户名，将`jdk-11.0.29_linux-x64_bin.tar.gz`改为实际的压缩包名称）将`JDK`安装包传到`/usr/java`目录，输入`cd /usr/java`打开该目录，输入`pwd`检查文件夹的绝对路径，再输入`ls`显示文件夹的文件信息。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

4. **解压文件并验证**  
   输入`tar -zxvf jdk-11.0.29_linux-x64_bin.tar.gz`（注意将`jdk-11.0.29_linux-x64_bin.tar.gz`改为实际的压缩包名称）将`JDK`压缩包解压到相同文件夹，再输入`ls`显示文件夹的文件信息，出现`jdk-11.0.29`（显示的实际安装版本）。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

5. **环境变量设置**  
   输入`exit`退出 Root 账户，输入`vim /home/user/.bash_profile`（注意将`/home/user/`中的`user`改为实际的系统用户名）进入系统默认用户的环境变量文件编辑界面，先按下键盘上的`i`键进入编辑状态，再根据[编辑文件详情](../../notes/.bash_profile)在原文件末尾加上，完成后先按下键盘上的`ESC`键，再输入`:wq`后按回车键进行保存（注意`:`为英文符号），输入`source /home/user/.bash_profile`使指令生效。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

6. **验证 JDK**  
   输入`java -version`验证 JDK 是否安装成功，安装成功会有 Java 版本信息输出。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

7. **同步子机**  
   分别在`Slave1`和`Slave2`子机上执行上面操作，完成 Java 配置。操作如图：
<p align="center">
  <img src="../../image/Java%20Configuration%20Diagram/P.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
