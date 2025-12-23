<h1 align="center">
  <br>
  <strong>Hadoop 集群配置安装</strong>
  <br>
</h1>

![License](https://img.shields.io/badge/License-MIT-green)
![Hadoop](https://img.shields.io/badge/Hadoop-3.4.2-yellow)
![Spark](https://img.shields.io/badge/Spark-3.3.4-orange)

<p align="center">
  Languages:
  <a href="./README.md">简体中文</a>
</p>

## 简介

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本教程详细介绍了如何在本地PC上使用VMware虚拟机软件搭建Hadoop集群的完整过程，旨在帮助用户模拟真实的Hadoop安装环境，掌握Hadoop集群的搭建与管理技能。通过本教程，用户可以在单台物理机上创建多个虚拟机节点，构建一个完整的Hadoop分布式文件系统（HDFS）和计算框架（MapReduce/YARN），为后续的大数据学习与实践打下坚实基础。该方案无需真实物理服务器集群，通过虚拟化技术模拟多台独立节点，降低硬件成本与运维复杂度，帮助用户高效掌握Hadoop生态的部署流程。

## 1. 环境准备与软件安装

- **VMware 虚拟机安装**  
  指导用户下载并安装 VMware Workstation 或 Pro 版本，为后续的虚拟机创建提供运行平台。
- **操作系统选择**  
  推荐使用 CentOS 7 或 Ubuntu 等 Linux 发行版作为虚拟机操作系统，并提供详细的系统下载与安装步骤。
- **JDK 与 Hadoop 安装包准备**  
  指导用户下载并配置 Java 开发工具包（JDK）及 Hadoop 安装包，确保运行环境依赖完整。
  
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

  
