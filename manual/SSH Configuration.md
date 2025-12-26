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

2. **生成 RSA 密钥对**  
   输入`ssh-keygen -t rsa -b 4096`生成 RSA 密钥对，出现下面内容直接回车不做编辑：`Enter file in which to save the key (/home/user/.ssh/id_rsa):`（生成文件的文件夹位置设置，默认在`/home/user/.ssh/`文件夹，可不修改）、`Enter passphrase for "/home/user/.ssh/id_rsa" (empty for no passphrase):`（给私钥文件设置密码，设置后需要再输入一层密码才能使用，不符合我们追求免密登录的目的）和`Enter same passphrase again:`（上一条密码是设置的二次确认，上一步不做操作则忽略）。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P2.png" width="80%">
</p>

3. **验证是否成功**  
   输入`ls ~/.ssh/`查看生成密钥对的文件夹文件，如果出现`id_rsa`和`id_rsa.pub`两个文件说明生成成功。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P3.png" width="80%">
</p>
