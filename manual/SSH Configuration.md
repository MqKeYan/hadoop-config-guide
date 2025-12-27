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
   在`Master`上输入`rpm -qa | grep openssh`查看`OpenSSH`是否正常安装，若正常安装将会输出版本信息；若未安装可输入`sudo dnf install -y openssh-server openssh-clients`进行安装。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P1.png" width="80%">
</p>

2. **生成 RSA 密钥对**  
   在`Master`上输入`ssh-keygen -t rsa -b 4096`生成 RSA 密钥对，出现下面内容直接回车不做编辑：`Enter file in which to save the key (/home/user/.ssh/id_rsa):`（生成文件的文件夹位置设置，默认在`/home/user/.ssh/`文件夹，可不修改）、`Enter passphrase for "/home/user/.ssh/id_rsa" (empty for no passphrase):`（给私钥文件设置密码，设置后需要再输入一层密码才能使用，不符合我们追求免密登录的目的）和`Enter same passphrase again:`（上一条密码是设置的二次确认，上一步不做操作则忽略）。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P2.png" width="80%">
</p>

3. **验证是否成功**  
   在`Master`上输入`ls ~/.ssh/`查看生成密钥对的文件夹文件，如果出现`id_rsa`（私钥）和`id_rsa.pub`（公钥）两个文件说明生成成功。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P3.png" width="80%">
</p>

4. **分发公钥**  
   在`Master`上分别输入`ssh-copy-id Master`、`ssh-copy-id Slave1`和`ssh-copy-id Slave2`将密钥分发到`Master`、`Slave1`和`Slave2`，注意名称的大小写不要写错名称。其中`Are you sure you want to continue connecting (yes/no/[fingerprint])?`是 SSH 首次连接到目标主机时的正常安全提示，直接输入 yes 并回车。出现`password:`的提示时输入用户密码并回车。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P4.png" width="80%">
</p>
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P5.png" width="80%">
</p>
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P6.png" width="80%">
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

6. **免密登录验证**  
   在`Master`上分别输入`ssh Master`、`ssh Slave1`和`ssh Slave2`进行免密登录验证，每次登陆后需要输入`exit`退出再登录下一个设备。操作如图：
<p align="center">
  <img src="../image/SSH%20Configuration%20Diagram/P10.png" width="80%">
</p>
