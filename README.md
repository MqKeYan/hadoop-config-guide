<h1 align="center">
  <br>
  <strong> Hadoop 与 Spark 集群配置指南 </strong>
  <br>
</h1>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-ApacheV2.0-blue"></a>
  <a href="https://www.vmware.com/"><img src="https://img.shields.io/badge/VMware-25H2-yello"></a>
  <a href="https://www.xftp.com/"><img src="https://img.shields.io/badge/Linux-8.0-green"></a>
  <a href="https://www.java.com/"><img src="https://img.shields.io/badge/Java-11.0-blue"></a>
  <a href="https://www.eclipse.org/"><img src="https://img.shields.io/badge/Eclipse-2025.12R-purple"></a>
  <a href="https://hadoop.apache.org/"><img src="https://img.shields.io/badge/Hadoop-3.4.2-yellow"></a>
  <a href="https://spark.apache.org/"><img src="https://img.shields.io/badge/Spark-3.5.7-orange"></a>
  <a href="https://www.xshell.com/"><img src="https://img.shields.io/badge/Xshell-8.0-red"></a>
  <a href="https://www.xftp.com/"><img src="https://img.shields.io/badge/Xftp-8.0-green"></a>
</p>

<p align="center">
  Languages:
  <a href="./README.md"> 简体中文 </a> ·
  <a href="./docs/README_en.md"> English </a>
</p>

<p align="center">
  <strong> 注：该文件为编辑状态，暂未完成编辑。简体中文以外的语言均使用机器翻译，若有翻译不到位的情况还请指点。待简体中文版本编辑完成后将会依次完成其他语言，非常感谢!如果作者不在没更新那就是去打卡丘了喵~请耐心等待或私信喵! </strong>
  <br>
  <strong> Note: This file is in an editing state and has not been completed yet. Languages other than Simplified Chinese are machine-translated. If there are any inaccuracies in the translation, please feel free to point them out. Once the Simplified Chinese version is completed, other language versions will be completed in sequence. Thank you very much! </strong>
  </br>
</p>

## 简介

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本教程详细介绍了如何在本地 PC 上使用 VMware Workstation 软件搭建 Hadoop 集群的完整过程，旨在帮助用户模拟真实的 Hadoop 安装环境，掌握 Hadoop 集群的搭建与管理技能。通过本教程，用户可以在单台物理机上创建多个虚拟机节点，构建一个完整的 Hadoop 分布式文件系统（HDFS）和计算框架（MapReduce/YARN），为后续的大数据学习与实践打下坚实基础。

## 软件包准备

- **VMware 虚拟机**  
  通过[VMware 官网](https://techdocs.broadcom.com/cn/zh-cn/vmware-cis/desktop-hypervisors/workstation-pro/17-0/using-vmware-workstation-pro.html)下载VMware Workstation Pro 25H2 的软件安装包（该版本的软件只有英文，后面对该软件的操作也将采用英文指导）。
- **操作系统镜像 ISO**  
  通过[CentOS 官网](https://www.centos.org/download)下载 CentOS stream 10的 ISO 镜像作为虚拟机的操作系统。
- **Hadoop 软件**  
  通过[Hadoop 官网](https://hadoop.apache.org/releases.html)下载 Hadoop-3.4.2 版本的软件压缩包。
- **JDK 软件**  
  通过[Java 官网](https://www.oracle.com/cn/java/technologies/downloads/)下载 Java-11.0.29 版本的软件压缩包。
- **Spark 软件**  
  通过[Spark 官网](https://spark.apache.org/downloads.html)下载并安装 Spark-3.5.7 版本的软件压缩包。
- **Xshell 软件**  
  通过[Xshell 官网](https://www.xshell.com/zh/free-for-home-school/)下载并安装 Xshell-8.0 版本的软件压缩包。
- **Xftp 软件**  
  通过[Xftp 官网](https://www.xshell.com/zh/free-for-home-school/)下载并安装 Xftp-8.0 版本的软件压缩包。

**注**：安装包推荐选择上面的版本，可以根据实际情况选择适合自己电脑的版本，选择新版本的时候要注意软件之间的兼容度。上面的最新版本的版本号统计截止2025年12月24日。

## 软件安装

- **VMware 虚拟机安装**  
  以 Windows 11 25H2 操作系统为例，在新版本的 Windows 11 操作系统中对 VMware 有版本要求，推荐使用17.0版本及其之后的版本，软件操作比较简单主要作为载体，所以软件汉化与否影响不大。具体步骤请参考[虚拟机安装详情](manual/SC/VMware%20Installation.md)。
- **操作系统安装**  
  安装 CentOS 10 操作系统，创建和部署基于 Linux 环境的虚拟化应用程序。具体步骤请参考[操作系统安装详情](manual/SC/ISO%20Installation.md)。
- **Xshell 与 Xftp 安装**  
  Xshell 能提供`远程终端管理`和`命令行操作`，方便在主机中操作虚拟机；而 Xftp 能够提供`文件传输`，方便在本地 PC 与服务器之间进行文件传输。具体步骤请参考[Xshell 与 Xftp 安装详情](manual/SC/Xshell%20and%20Xftp%20Installation.md)。

## 系统配置
- **虚拟机克隆**  
  通过克隆第1台虚拟机创建出额外2个虚拟机，以此来搭建 Hadoop 集群。具体步骤请参考[虚拟机克隆详情](manual/SC/Server%20Cloning.md)。
- **虚拟网络配置**  
  在 VMware Workstation 中通过`虚拟网络编辑器`配置服务器的IP，确保虚拟机能够正常访问本地 PC 的网络。具体步骤请参考[虚拟网络配置详情](manual/SC/Virtual%20Network%20Configuration.md)。
- **集群基础配置**  
  将第1台虚拟机作为集群的主机，其余2台虚拟机作为集群的子机，然后对虚拟机进行集群基础配置。具体步骤请参考[集群基础配置详情](manual/SC/Basic%20Cluster%20Configuration.md)。
- **Xshell 与 Xftp 配置**  
  分别将 Xshell 与 Xftp 连接至服务器，为后续操作做准备。具体步骤请参考[Xshell 与 Xftp 配置详情](manual/SC/Xshell%20and%20Xftp%20Configuration.md)。
- **文件导入**  
  使用Xftp将`Hadoop`、`Spark`和`Java`等的压缩包传入服务器主机的根目录。具体步骤请参考[文件导入详情](manual/SC/Data%20Import.md)。
- **SSH 配置**  
  通过配置 SSH 可以实现服务器之间的 SSH 无密码登录，简化集群管理操作流程同时提高运维效率。具体步骤请参考[SSH 配置详情](manual/SC/SSH%20Configuration.md)。
- **Java 配置**  
  分别在各个服务器上安装好 Java 环境，为后续操作做准备。具体步骤请参考[Java 配置详情](manual/SC/Java%20Configuration.md)。
- **Eclipse 安装**  
  在服务器主机上安装 Eclipse 集成开发环境，用于后续 Hadoop 与 Spark 项目的开发、调试与运行。具体步骤请参考[Eclipse 安装详情](manual/SC/Eclipse%20Installation.md)。
- **防火墙配置**  
  在服务器主机上配置防火墙规则，保证集群之间的正常连通。具体步骤请参考[防火墙配置详情](manual/SC/Firewall%20Installation.md)。

## Hadoop 集群搭建

- **Hadoop 安装**  
  在各服务器节点上安装 Hadoop 并配置相应的运行环境变量，确保 Hadoop 与已部署的 Java 版本兼容。具体步骤请参考[Hadoop 安装详情](manual/SC/Hadoop%20Installation.md)。
- **Hadoop 环境变量配置**  
  配置`hadoop-env.sh`、`yarn-env.sh`等 Hadoop 的环境变量文件，具体步骤请参考[Hadoop 环境变量文件详情](manual/SC/Hadoop%20Environment%20Variables%20Configuration.md)。
- **Hadoop 核心组件配置**  
  配置`core-site.xml`、`hdfs-site.xml`、`mapred-site.xml`、`yarn-site.xml`等 Hadoop 的核心文件，具体步骤请参考[Hadoop 核心组件详情](manual/SC/Hadoop%20Core%20Configuration.md)。
- **集群子机配置**  
  将 Hadoop 主机的文件复制到各个从节点，具体步骤请参考[Hadoop 子机配置详情](manual/SC/Hadoop%20Worker%20Node%20Configuration.md)。
- **Hadoop 验证**  
  完成 NameNode 初始化与 HDFS 格式化操作，依次启动 HDFS 与 YARN 服务，确保各节点正常注册并处于可用状态。具体步骤请参考[Hadoop 验证详情](manual/SC/Hadoop%20Validation.md)。

## Spark 集群搭建

- **Spark 安装**  
  在各服务器节点上安装 Spark 并配置相应的运行环境变量，确保 Spark 与已部署的 Hadoop 版本兼容。具体步骤请参考[Spark 安装详情](manual/SC/Spark%20Installation.md)。
- **Spark 基础配置**  
  通过配置`spark-env.sh`与`spark-defaults.conf`等文件，对 Spark 相关的策略进行统一管理，优化 Spark 执行效率和集群资源利用率。具体步骤请参考[Spark 基础配置详情](manual/SC/Spark%20Configuration.md)。
- **集群子机配置**  
  将 Spark 主机的文件复制到各个从节点，具体步骤请参考[Spark 子机配置详情](manual/SC/Spark%20Worker%20Node%20Configuration.md)。
- **Spark 验证**  
  通过提交示例 Spark 程序或实际数据分析任务，验证 Spark 集群与 Hadoop 集群的协同工作能力，同时结合 YARN Web UI 观察 Spark 作业的运行状态，确保 Spark 计算环境稳定可用。具体步骤请参考[Spark 验证详情](manual/SC/Spark%20Validation.md)。

## 讨论与交流

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;如果你在安装过程中遇到什么问题欢迎在讨论区进行讨论，当然如果你有相应的解决方法也欢迎发布出来作为补充，帮助我完善教程！  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;欢迎大家在 GitHub 中提出问题、分享想法或讨论改进方案：[讨论入口](../../discussions)

## License

This project is licensed under the **Apache License 2.0**.
