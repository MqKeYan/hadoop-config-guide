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
   其中`Icon=/home/user/eclipse/plugins/org.eclipse.platform_4.38.0.v20251201-0920/eclipse256.png`可能因为版本不同位置不同，可使用`find /home/user/eclipse -iname "*.png"`查询 .png 文件。因为 GNOME 桌面环境不再可靠支持 .xpm 作为应用启动器图标格式，所以原本软件根目录的 .xpm 文件是用不了，改为使用 .png 文件。
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

5. **安装依赖**  
   输入`dnf repolist`检查系统仓库启用情况，检查是否有`epel`仓库，如果没有需要使用`sudo dnf install epel-release
`启用该仓库，再输入`sudo dnf update`更新系统仓库并同步依赖，输入`dnf search webkit2gtk4.1`检查是否有`webkit2gtk4.1`依赖，输入`sudo dnf install gtk3`安装`gtk3`依赖，再输入`sudo dnf install webkit2gtk4.1`安装`webkit2gtk4.1`依赖。安装依赖过程中，遇到提问是否安装直接按`y`键确认安装。操作如图：  
   **注：**
   `WebKit`相关依赖在`epel`仓库里面，需要启用该仓库才能正常安装`WebKit2gtk4.1`，而`gtk3`和`webkit2gtk4.1`是 Eclipse 的依赖，安装后才能正确显示全部窗口信息。软件更新可能会导致依赖变化以官方更新为准。
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

6. **验证依赖**  
   输入`rpm -qa | grep gtk3`和`rpm -qa | grep webkit2gtk4.1`验证依赖安装，出现类似`gtk3-3.24.43-4.el10.x86_64`和`webkit2gtk4.1-2.48.3-1.el10_1.x86_64`说明成功。操作如图：
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

7. **启动 Eclipse**  
   双击 Eclipse 图标启动软件，点击`Browse`按钮设置工作区的目录（可以不做更改），勾选`Use this as the default and do not ask again`选项设置为默认目录，点击`Launch`按钮进入软件主页，软件功能正常说明安装成功。操作如图：
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

7. **汉化 Eclipse**  
   依次点击`Help`-`Install New Software`按钮进入安装页面，点击`Add`按钮添加下载安装，在`Name`输入`hanhua`，在`Location`输入`https://mirror.nju.edu.cn/eclipse/technology/babel/update-site/latest/`（南京大学镜像）或`https://mirror.tuna.tsinghua.edu.cn/eclipse/technology/babel/update-site/latest/`（清华大学镜像），输入完成后点击`Add`，在列表中找到并勾选`Babel Language Packs in Chinese(Simplified)`选项，然后点击`Next`按钮，在安装详细信息界面点击`Next`按钮，在接受许可证界面勾选`I accept the terms of the license agreement`选项，然后点击`Finish`按钮，在信任组织界面勾选出现的选项，再点击`Trust Selected`按钮等待下载，等待下载完成会弹出界面然后勾选出现的选项，再点击`Trust Selected`按钮，最后点击`Restart Now`按钮重启软件完成汉化。操作如图：
<p align="center">
  <img src="../../image/Eclipse%20Installation%20Diagram/P.png" width="80%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
