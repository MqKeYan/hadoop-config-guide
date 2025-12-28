<h1 align="center">
  <br>
  <strong> 操作系统安装指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/ISO%20Installation.md"> 简体中文 </a> ·
  <a href="../EN/ISO%20Installation_en.md"> English </a>
</p>

1. **新建虚拟机**  
   在 VMware Workstation 中，依次点击`File`-`New Virtual Machine`新建虚拟机。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P1.png" width="80%">
</p>

2. **创建模式设置**  
   勾选第一个`Typical`（典型）的勾选框，默认推荐该方式进行创建，只需要简单设置就能创建一台虚拟机做服务器的主机。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P2.png" width="60%">
</p>

3. **安装来源设置**  
   勾选`Installer disc image file(iso):`的勾选框，然后点击`Browse`按钮，从文件管理系统中选择之前下载的 ISO 系统镜像作为系统的安装来源。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P3.png" width="60%">
</p>

4. **名称与安装位置设置**  
   在`Virtual machine name`（虚拟机名称）下面的框格输入`HadoopMaster`作为虚拟机的名称，然后在`Location`（位置）下面的框格中点击`Browse`按钮选择安装的位置，尽可能选择剩余空间大的位置作为安装位置，也可以保持默认位置。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P4.png" width="60%">
</p>

5. **磁盘设置**  
   在`Maximum disk size(GB)`（最大磁盘大小）后面设置`20`，一般情况下 20GB 足够使用而且后期可以扩容，同时勾选下面`Store virtual disk as a single file`（将虚拟磁盘储存为单个文件）的勾选框。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P5.png" width="60%">
</p>

6. **硬件详情设置**  
   点击`Customize Hardware`（自定义硬件）进入硬件详情设置。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P6.png" width="60%">
</p>

7. **内存设置**  
   点击左边的`Memory`进入内存设置，内存设置可以在`Memory for this virtual machine`后面的框中手动输入设置内存大小，也可以直接拖动或点击下面的滑条与刻度。在教学环境中，如果只安装`Hadoop`内存推荐 2G 以上，如果还要安装`Spark`内存推荐 4G 以上。如果后期运行大型文件遇到内存不足可以再扩容。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P7.png" width="60%">
</p>

8. **处理器设置**  
   首先打开本地 PC 的`任务管理器`查看 CPU 的逻辑处理器数量详情，确保分配完后本地 PC 还能够正常运行。点击左边的`Processors`进入处理器设置，给`Number of processors`（处理器数量）设置数量为`1`，给`Number of cores per processors`（每个处理器核心数量）设置数量为`3`（推荐2-4，更多数量就看电脑性能了）。如果后期运行大型文件遇到核心不足可以再扩容。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P8.png" width="80%">
</p>
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P9.png" width="60%">
</p>

9. **网络适配器设置**  
   点击左边的`Network Adapter`进入网络适配器设置，勾选`Connect power on`(接通电源时连接)启用，确保启动虚拟机就能自动连接，勾选`Custom: Specific virtual network`（自定义特定虚拟网络）模式，选择`VMnet8(NAT)`模式，确保后面本地 PC 能与虚拟机正常连接，点击右下角`Close`关闭自定义硬件的设置界面完成设置。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P10.png" width="60%">
</p>

10. **启动虚拟机**  
   勾选下面的`Power on this virtual machine after creation`（创建后打开虚拟机电源），可以根据实际情况进行勾选，点击`Finish`完成配置。如果勾选了上面的创建后打开电源，虚拟机会自动启动；如果没有勾选，需要点击`Power on this virtual machine`手动启动虚拟机。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P6.png" width="60%">
</p>
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P11.png" width="80%">
</p>

11. **系统安装模式设置**  
   鼠标随便点击虚拟机界面任意位置从本地PC进入虚拟机界面后才能用方向键进行选择，用方向键选择`Install CentOS Stream 10`然后回车进入安装。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P12.png" width="80%">
</p>

12. **语言设置**  
   根据自己想要使用的语言进行选择。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P13.png" width="80%">
</p>

13. **Root 账户**  
   点击`Root 账户`进入账户信息设置，勾选`启用 Root 账户`并设置密码，教学环境推荐设置简单密码防止忘记。点击`完成`按钮完成设置，可能需要双击。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P14.png" width="80%">
</p>
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P15.png" width="80%">
</p>

14. **创建用户**  
    设置用户的名称，全名和用户名保持一致，该账户为系统的登录账户。勾选`为此用户账户添加管理权限（wheel组成员）`和`需要密码才能使用该账户`。在教学环境中可以设置该用户密码和 Root 账户的密码一致，防止忘记密码。点击`完成`按钮完成设置，可能需要双击。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P14.png" width="80%">
</p>
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P16.png" width="80%">
</p>

15. **安装位置**  
    直接点击`完成`按钮完成设置，可能需要双击，该选项保持默认即可。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P14.png" width="80%">
</p>
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P17.png" width="80%">
</p>

16. **完成安装**  
    直接点击`开始安装`按钮进行安装，等待安装完成，点击`重启系统`完成系统安装。操作如图：
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P18.png" width="80%">
</p>
<p align="center">
  <img src="../../image/ISO%20Installation%20Diagram/P19.png" width="80%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
