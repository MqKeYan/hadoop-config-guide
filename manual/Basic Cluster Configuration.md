<h1 align="center">
  <br>
  <strong> 集群基础配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="./SSH%20Configuration.md"> 简体中文 </a> ·
  <a href="./SSH%20Configuration_en.md"> English </a>
</p>

1. **系统设置**  
   点击右上角的状态栏，再点击设置图标进入系统设置。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P1.png" width="80%">
</p>

2. **名称设置**  
   设置界面点击左边的`系统`选项进入系统设置，再点击`关于`进入系统信息界面。在`设备名称`里面给服务器主机设置`Master`的名称（注意记住大小写），点击旁边蓝色按钮保存。其他两台子机也按照对应的名称分别设置`Slave1`和`Slave2`。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P2.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P3.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P4.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P5.png" width="80%">
</p>

3. **名称验证**  
   点击左上角状态栏，再点击`终端`图标进入终端界面。在`终端`里面输入`hostname`，查询服务器名称。其他两台服务器子机也执行相同操作，检查服务器名称是否正确。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P6.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P7.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P8.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P9.png" width="80%">
</p>

4. **息屏设置**  
   设置界面点击左边的`电源`选项进入电源设置。在`节点`-`息屏`中选择`从不`，避免长时间未操作系统休眠。其他两台服务器子机也执行相同操作。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P10.png" width="80%">
</p>

5. **时间同步**  
   设置界面点击左边的`系统`选项进入系统设置，再点击`日期与时间`进入时间设置界面。确认每台服务器的`时间和日期`和`时区`设置保持一致，确认时间是同步状态。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P11.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P12.png" width="80%">
</p>


---
<p align="center">
  <a href="../README.md"><strong> 返回主页 </strong></a>
</p>
