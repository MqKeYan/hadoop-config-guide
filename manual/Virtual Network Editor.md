<h1 align="center">
  <br>
  <strong> 虚拟网络配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="./ISO%20Installation.md"> 简体中文 </a> ·
  <a href="./ISO%20Installation_en.md"> English </a>
</p>

1. **虚拟网络编辑器**  
   在 VMware Workstation 中，依次点击`Edit`-`Virtual Network Editor`按钮打开虚拟网络配置器。操作如图：
<p align="center">
  <img src="../Virtual%20Network%20Editor%20Diagram/P1.png" width="80%">
</p>

2. **更改设置**  
   一般保持默认设置即可，如果地址冲突需要修改点击`Change Setting`按钮更改设置。操作如图：
<p align="center">
  <img src="../Virtual%20Network%20Editor%20Diagram/P2.png" width="60%">
</p>

3. **信息编辑**  
   点击选择`VMnet8`进行配置，确保勾选`NAT`、`Connect a host virtual adapter to this network`和`Use local DHCP service to distribute IP address to VMs`的勾选框，`Subnet IP`设置一个未冲突的地址，`Subnet mask`设置`255.255.255.0`不变。操作如图：
<p align="center">
  <img src="../Virtual%20Network%20Editor%20Diagram/P3.png" width="60%">
</p>

---
<p align="center">
  <a href="../README.md"><strong> 返回主页 </strong></a>
</p>
