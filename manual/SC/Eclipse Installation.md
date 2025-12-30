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
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

2. **确认安装包**  
   在`用户根目录`上输入`ls`查询安装包版本是否正确版本信息。操作如图：  
   **注：**
   `用户根目录`是Xshell 连接 Master 服务器的默认地址，也就是`/home/user/`目录，其中`user`是你的用户名，可以使用`cd /home/user/`或者`cd ~`返回用户根目录。
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

3. **解压安装包**  
   输入`tar -zxvf eclipse-java-2025-12-R-linux-gtk-x86_64.tar.gz`解压安装包，使用`ls`确认解压是否成功,出现`eclipse`文件夹说明成功。操作如图：  
   **注：**
   将`eclipse-java-2025-12-R-linux-gtk-x86_64.tar.gz`改为实际的安装包名称。
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

4. **创建快捷方式**  
   输入`sudo vim /usr/share/applications/eclipse.desktop`创建快捷方式，按`i`键进入编辑模式，按照[快捷方式编辑详情](../../notes/usr/share/applications/eclipse.desktop)编辑文件，按`ESC`键再输入`:wq`保存退出，重启服务器生效。操作如图： 
   **注：**
   `Icon=/home/user/eclipse/plugins/org.eclipse.platform_4.38.0.v20251201-0920/eclipse256.png`可能因为版本不同位置不同，可使用`find /home/user/eclipse -iname "*.png"`查询 .png 文件。因为 GNOME 桌面环境不再可靠支持 .xpm 作为应用启动器图标格式，所以原本软件根目录的 .xpm 文件是用不了，改为使用 .png 文件。
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
