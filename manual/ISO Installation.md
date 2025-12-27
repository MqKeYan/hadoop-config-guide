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

4. **名称与位置**  
   在`Virtual machine name`（虚拟机名称）下面的框格输入`HadoopMaster`作为虚拟机的名称，然后在`Location`（位置）下面的框格中点击`Browse`按钮选择安装的位置。操作如图：
<p align="center">
  <img src="../image/ISO%20Installation%20Diagram/P4.png" width="80%">
</p>

5. **权限校验**  
   分别在`Master`、`Slave1`和`Slave2`上输入`chmod 700 ~/.ssh`和`chmod 600 ~/.ssh/authorized_keys`进行权限校验，校验正常将不会有提示。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P7.png" width="80%">
</p>
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P8.png" width="80%">
</p>
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P9.png" width="80%">
</p>

5. **免密登录验证**  
   在`Master`上分别输入`ssh Master`、`ssh Slave1`和`ssh Slave2`进行免密登录验证，每次登陆后需要输入`exit`退出再登录下一个设备。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P10.png" width="80%">
</p>
