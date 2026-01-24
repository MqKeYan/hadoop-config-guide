<h1 align="center">
  <br>
  <strong> Hadoop Config Guide </strong>
  <br>
</h1>

[![License](https://img.shields.io/badge/License-ApacheV2.0-green)](LICENSE)
[![VMware](https://img.shields.io/badge/VMware-25H2-blue)](https://www.vmware.com/)
[![Java](https://img.shields.io/badge/Java-11.0.29-blue)](https://www.java.com/)
[![Eclipse](https://img.shields.io/badge/Eclipse-2025.12R-purple)](https://www.eclipse.org/)
[![Hadoop](https://img.shields.io/badge/Hadoop-3.4.2-yellow)](https://hadoop.apache.org/)
[![Spark](https://img.shields.io/badge/Spark-3.5.7-orange)](https://spark.apache.org/)

<p align="center">
  Languages:
  <a href="../README.md"> 简体中文 </a> ·
  <a href="./docs/README_en.md"> English </a>
</p>

## Introduction

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;This tutorial provides a detailed guide on how to build a Hadoop cluster on a local PC using VMware virtualization software. It aims to help users simulate a real Hadoop installation environment and master the skills of building and managing a Hadoop cluster. Through this tutorial, users can create multiple virtual machine nodes on a single physical machine, setting up a complete Hadoop Distributed File System (HDFS) and computing framework (MapReduce/YARN), which will lay a solid foundation for future big data learning and practice.

## 1. Software Installation Packages Preparation

- **VMware Virtual Machine**  
  Download the VMware Workstation Pro 25H2 installation package from the [VMware official website](https://techdocs.broadcom.com/cn/zh-cn/vmware-cis/desktop-hypervisors/workstation-pro/17-0/using-vmware-workstation-pro.html). You can choose the version that is suitable for your computer.
- **Operating System ISO Image**  
  Download the CentOS Stream 10 ISO image from the [CentOS official website](https://www.centos.org/download). You can choose the ISO image suitable for your computer.
- **Hadoop Software**  
  Download the Hadoop-3.4.2 version software package from the [Hadoop official website](https://hadoop.apache.org/releases.html). Choose the version that fits your computer.
- **JDK Software**  
  Download the Java-11.0.29 version software package from the [Java official website](https://www.oracle.com/cn/java/technologies/downloads/). Choose the version that fits your computer.
- **Spark Software**  
  Download and install the Spark-3.5.7 version software package from the [Spark official website](https://spark.apache.org/downloads.html). Choose the version that fits your computer.
