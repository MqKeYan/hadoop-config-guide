<h1 align="center">
  <br>
  <strong> 操作系统安装 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="./ISO%20Installation.md"> 简体中文 </a> ·
  <a href="./ISO%20Installation_en.md"> English </a>
</p>

1. **新建虚拟机**  
   在 VMware Workstation 中，依次点击`File`-`New Virtual Machine`新建虚拟机。操作如图：
<p align="center">
  <img src="../image/ISO%20Installation%20Diagram/P1.png" width="80%">
</p>

2. **安装模式**  
   勾选第一个`Typical`（典型）的勾选框，默认推荐该方式进行创建，只需要简单设置就能创建一台虚拟机做服务器的主机。操作如图：
<p align="center">
  <img src="../image/ISO%20Installation%20Diagram/P2.png" width="60%">
</p>

3. **安装来源**  
   勾选`Installer disc image file(iso):`的勾选框，然后点击`Browse`按钮，从文件管理系统中选择之前下载的 ISO 系统镜像作为系统的安装来源。操作如图：
<p align="center">
  <img src="../image/ISO%20Installation%20Diagram/P3.png" width="60%">
</p>

4. **名称与安装位置**  
   在`Virtual machine name`（虚拟机名称）下面的框格输入`HadoopMaster`作为虚拟机的名称，然后在`Location`（位置）下面的框格中点击`Browse`按钮选择安装的位置，尽可能选择剩余空间大的位置作为安装位置。操作如图：
<p align="center">
  <img src="../image/ISO%20Installation%20Diagram/P4.png" width="60%">
</p>

5. **磁盘设置**  
   在`Maximum disk size(GB)`（最大磁盘大小）后面设置`20`，一般情况下 20GB 足够使用，后期可以在虚拟机设置里面扩容，，勾选下面`Store virtual disk as a single file`（将虚拟磁盘储存为单个文件）的勾选框。操作如图：
<p align="center">
  <img src="../image/ISO%20Installation%20Diagram/P5.png" width="60%">
</p>
