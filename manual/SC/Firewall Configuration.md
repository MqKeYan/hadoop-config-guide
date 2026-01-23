<h1 align="center">
  <br>
  <strong> 防火墙配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Firewall%20Configuration.md"> 简体中文 </a> ·
  <a href="../EN/Firewall%20Configuration_en.md"> English </a>
</p>

1. **配置主机的防火墙**  
   在`Master`上输入`su`进入 root 用户，依次输入`systemctl stop firewalld`和`systemctl disable firewalld`关闭防火墙，然后输入`systemctl status firewalld`验证端口配置。操作如图：
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P.png" width="60%">
</p>

2. **配置子机的防火墙**  
   分别在`Slave1`和`Slave2`上输入`su`进入 root 用户，依次输入`systemctl stop firewalld`和`systemctl disable firewalld`关闭防火墙，然后输入`systemctl status firewalld`验证端口配置。操作如图：
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
