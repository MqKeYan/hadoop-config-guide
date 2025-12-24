<h1 align="center">
  <br>
  <strong> Hadoop 配置指南 </strong>
  <br>
</h1>

<p align="center">
  <a href="LICENSE"><img src="https://img.shields.io/badge/License-ApacheV2.0-green"></a>
  <a href="https://www.vmware.com/"><img src="https://img.shields.io/badge/VMware-25H2-blue"></a>
  <a href="https://www.java.com/"><img src="https://img.shields.io/badge/Java-11.0.29-blue"></a>
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

## 简介

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本教程详细介绍了如何在本地 PC 上使用 VMware 虚拟机软件搭建 Hadoop 集群的完整过程，旨在帮助用户模拟真实的 Hadoop 安装环境，掌握 Hadoop 集群的搭建与管理技能。通过本教程，用户可以在单台物理机上创建多个虚拟机节点，构建一个完整的 Hadoop 分布式文件系统（HDFS）和计算框架（MapReduce/YARN），为后续的大数据学习与实践打下坚实基础。

## 1. 软件安装包准备

- **VMware 虚拟机**  
  通过[VMware 官网](https://techdocs.broadcom.com/cn/zh-cn/vmware-cis/desktop-hypervisors/workstation-pro/17-0/using-vmware-workstation-pro.html)下载VMware Workstation Pro 25H2 的软件安装包()，可以根据实际情况选择适合自己电脑的版本。
- **操作系统镜像 ISO**  
  通过[CentOS 官网](https://www.centos.org/download)下载 CentOS stream 10的 ISO 镜像作为虚拟机的操作系统，可以根据实际情况选择适合自己电脑的镜像。
- **Hadoop 软件**  
  通过[Hadoop 官网](https://hadoop.apache.org/releases.html)下载 Hadoop-3.4.2 版本的软件压缩包，可以根据实际情况选择适合自己电脑的版本。
- **JDK 软件**  
  通过[Java 官网](https://www.oracle.com/cn/java/technologies/downloads/)下载 Java-11.0.29 版本的软件压缩包，可以根据实际情况选择适合自己电脑的版本。
- **Spark 软件**  
  通过[Spark 官网](https://spark.apache.org/downloads.html)下载并安装 Spark-3.5.7 版本的软件压缩包，可以根据实际情况选择适合自己电脑的版本。
  
## 2. 软件安装
- **VMware 虚拟机安装**  
  这里我以Windows 11操作系统举例，具体步骤在[安装详情](.)。
- **网络设置**  





## 2. 单机环境配置
- **虚拟机创建与配置**  
  通过 VMware 创建多个虚拟机节点，模拟 Hadoop 集群中的不同服务器角色，详细讲解内存、CPU、磁盘等资源分配方案。
- **网络设置**  
  配置虚拟机网络模式（NAT 或桥接），确保节点间能够相互通信，并能够访问外部网络。
- **SSH 无密码登录配置**  
  实现虚拟机节点之间的 SSH 无密码登录，简化集群管理操作流程，提高运维效率。

## 3. Hadoop 集群搭建

- **Hadoop 安装与配置**  
在各虚拟机节点上安装 Hadoop，并配置  
`core-site.xml`、`hdfs-site.xml`、`mapred-site.xml`、`yarn-site.xml`  
  等关键配置文件，明确 NameNode、DataNode、ResourceManager、NodeManager 等角色。
- **集群启动与测试**  
  指导用户完成 HDFS 格式化、HDFS 与 YARN 服务启动，并通过 Web UI 与命令行验证集群运行状态。
- **集群优化与故障排查**  
  提供集群性能优化建议，以及常见故障的排查思路与解决方案。

## 4. 高级功能与扩展

- **HDFS 高级操作**  
  介绍 HDFS 文件上传、下载、删除等基础操作，以及数据备份与恢复等进阶功能。
- **MapReduce 编程实践**  
  通过示例程序引导用户编写 MapReduce 作业，深入理解分布式计算执行流程。
- **集群扩展与管理**  
  讲解如何向现有集群中新增节点，以及集群监控与日常管理方法，满足规模扩展需求。


## 🔐 License

This project is licensed under the **Apache License 2.0**.
