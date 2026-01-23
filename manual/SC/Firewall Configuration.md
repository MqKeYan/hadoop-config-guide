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
   在`Master`上输入`su`进入 root 用户，依次输入`systemctl enable firewalld --now`、`firewall-cmd --permanent --add-port={22,9000,9870,8030-8033,8080,18080}/tcp`和`firewall-cmd --reload`配置防火墙运行进出的端口，然后输入`firewall-cmd --permanent --list-ports`验证端口配置。操作如图：  
   **注：**
   将`22,9000,9870,8030-8033,8080,18080`改为实际的系统端口。
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P1.png" width="60%">
</p>

2. **配置 spark-defaults.conf 文件**  
   分别在`Slave1`和`Slave2`上输入`su`进入 root 用户，依次输入`systemctl enable firewalld --now`、`firewall-cmd --permanent --add-port={22,9864,8041-8042}/tcp`和`firewall-cmd --reload`配置防火墙运行进出的端口，然后输入`firewall-cmd --permanent --list-ports`验证端口配置。操作如图：  
   **注：**
   将`22,9864,8041-8042`改为实际的系统端口。
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P2.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Firewall%20Configuration%20Diagram/P3.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
