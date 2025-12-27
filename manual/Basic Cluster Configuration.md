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
   在`Master`服务器中，点击右上角的状态栏，再点击设置图标进入系统设置。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P1.png" width="80%">
</p>

2. **名称设置**  
   在`Master`服务器中，在设置界面点击左边的`系统`选项进入系统设置，再点击`关于`进入系统信息界面。在`设备名称`里面给服务器主机设置`Master`的名称（注意记住大小写），点击旁边蓝色按钮保存。其他两台子机也按照对应的名称分别设置`Slave1`和`Slave2`。操作如图：
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
   在`Master`服务器中，点击左上角状态栏，再点击`终端`图标进入终端界面。在`终端`里面输入`hostname`，查询服务器名称。其他两台服务器子机也执行相同操作，检查服务器名称是否正确。操作如图：
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
   在`Master`服务器中，在设置界面点击左边的`电源`选项进入电源设置。在`节点`-`息屏`中选择`从不`，避免长时间未操作系统休眠。其他两台服务器子机也执行相同操作。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P10.png" width="80%">
</p>

5. **时间同步**  
   在`Master`服务器中，在设置界面点击左边的`系统`选项进入系统设置，再点击`日期与时间`进入时间设置界面。确认每台服务器的`时间和日期`和`时区`设置保持一致，确认时间是同步状态。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P11.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P12.png" width="80%">
</p>

6. **IP 地址查询**  
   在`Master`服务器中，在设置界面点击左边的`网络`选项进入网络设置，再点击`有线`旁边的设置图标进入网络信息详情。查询服务器对应的`IPV4 地址`信息并记录。其他两台服务器子机也执行相同操作，记录服务器的 IP 地址信息。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P13.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P14.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P15.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P16.png" width="80%">
</p>

7. **hosts 文件配置**  
   在`Master`服务器中，点击左上角状态栏，再点击`终端`图标进入终端界面。在`终端`里面输入`su`并输入密码（密码不会显示出来，需要盲输）进入Root 用户模式，再输入`vim /etc/hosts`进入 hosts 文件编辑界面，先按下键盘上的`i`键进入编辑状态，再根据自己的服务器IP地址输入`IP`+` `+`服务器名称`的格式信息，完成后先按下键盘上的`ESC`键，再输入`:wq`后按`回车`键进行保存（注意`:`为英文符号），完成后输入`exit`退出 Root 用户模式。其他两台服务器子机也执行相同操作，进行 hosts 文件配置。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P17.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P18.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P19.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P20.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P21.png" width="80%">
</p>

8. **验证hosts 文件**  
   在`Master`服务器中，点击左上角状态栏，再点击`终端`图标进入终端界面。在`终端`里面分别输入`ping -c 5 Master`、`ping -c 5 Slave1`和`ping -c 5 Slave2`进行连通性验证,如果 hosts 文件设置正确就会有相应的 ping 反馈。其他两台服务器子机也执行相同操作，检查 hosts 文件是否配置正确。操作如图：
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P22.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P23.png" width="80%">
</p>
<p align="center">
  <img src="../image/Basic%20Cluster%20Configuration%20Diagram/P24.png" width="80%">
</p>

---
<p align="center">
  <a href="../README.md"><strong> 返回主页 </strong></a>
</p>
