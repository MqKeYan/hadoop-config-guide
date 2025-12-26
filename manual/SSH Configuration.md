<h1 align="center">
  <br>
  <strong> SSH 配置指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="./SSH%20Configuration.md"> 简体中文 </a> ·
  <a href="./SSH%20Configuration_en.md"> English </a>
</p>

1. **确认 OpenSSH 安装情况**  
   使用 Xshell 连接 Master 服务器，输入`rpm -qa | grep openssh`查看`OpenSSH`是否正常安装，若正常安装将会输出版本信息；若未安装可输入`sudo dnf install -y openssh-server openssh-clients`进行安装。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P1.png" width="80%">
</p>
