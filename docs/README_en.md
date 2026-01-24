<h1 align="center">
  <br>
  <strong> Hadoop and Spark Cluster Configuration Guide </strong>
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
  <strong>
    Note: Languages other than Simplified Chinese are machine-translated.  
    If there are any inaccuracies in the translation, please feel free to point them out.  
    If the author has not updated the content recently, it means they are probably off punching Pikachu 😺  
    Please be patient or feel free to send a private message!
  </strong>
  <br>
</p>

## Introduction

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
This tutorial provides a detailed introduction to the complete process of building a Hadoop cluster on a local PC using VMware Workstation. The goal is to help users simulate a real Hadoop deployment environment and master the skills required for Hadoop cluster setup and management.

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
By following this tutorial, users can create multiple virtual machine nodes on a single physical machine to construct a complete Hadoop Distributed File System (HDFS) and computing framework (MapReduce/YARN), laying a solid foundation for subsequent big data learning and practical applications.

## Software Preparation

- **VMware Workstation**  
  Download the VMware Workstation Pro 25H2 installation package from the [VMware official website](https://techdocs.broadcom.com/cn/zh-cn/vmware-cis/desktop-hypervisors/workstation-pro/17-0/using-vmware-workstation-pro.html).  
  (Note: This version is available only in English, and all related operations in this tutorial will be described using the English interface.)

- **Operating System ISO Image**  
  Download the CentOS Stream 10 ISO image from the [CentOS official website](https://www.centos.org/download) to be used as the virtual machine operating system.

- **Hadoop Software**  
  Download the Hadoop 3.4.2 binary package from the [Hadoop official website](https://hadoop.apache.org/releases.html).

- **JDK Software**  
  Download the Java 11.0.29 package from the [Java official website](https://www.oracle.com/cn/java/technologies/downloads/).

- **Spark Software**  
  Download and install the Spark 3.5.7 package from the [Spark official website](https://spark.apache.org/downloads.html).

- **Xshell Software**  
  Download and install Xshell 8.0 from the [Xshell official website](https://www.xshell.com/zh/free-for-home-school/).

- **Xftp Software**  
  Download and install Xftp 8.0 from the [Xftp official website](https://www.xshell.com/zh/free-for-home-school/).

**Note**:  
The versions listed above are recommended. You may choose different versions based on your actual environment, but please pay close attention to compatibility between software components when selecting newer versions.  
The version information listed above is accurate as of **December 24, 2025**.

## Software Installation

- **VMware Workstation Installation**  
  Taking Windows 11 25H2 as an example: newer versions of Windows 11 have version requirements for VMware. It is recommended to use VMware Workstation 17.0 or later. Since VMware mainly serves as a virtualization carrier, whether the software is localized does not significantly affect usage.  
  Refer to: [VMware Installation Guide](manual/SC/VMware%20Installation.md)

- **Operating System Installation**  
  Install CentOS Stream 10 and deploy Linux-based virtualized applications.  
  Refer to: [Operating System Installation Guide](manual/SC/ISO%20Installation.md)

- **Xshell and Xftp Installation**  
  Xshell provides remote terminal management and command-line operations for managing virtual machines, while Xftp supports file transfers between the local PC and servers.  
  Refer to: [Xshell and Xftp Installation Guide](manual/SC/Xshell%20and%20Xftp%20Installation.md)

## System Configuration

- **Virtual Machine Cloning**  
  Clone the first virtual machine to create two additional virtual machines to form a Hadoop cluster.  
  Refer to: [Virtual Machine Cloning Guide](manual/SC/Server%20Cloning.md)

- **Virtual Network Configuration**  
  Configure server IP addresses using the Virtual Network Editor in VMware Workstation to ensure that virtual machines can properly access the local PC network.  
  Refer to: [Virtual Network Configuration Guide](manual/SC/Virtual%20Network%20Configuration.md)

- **Basic Cluster Configuration**  
  Designate the first virtual machine as the master node and the remaining two as worker nodes, then perform basic cluster configuration.  
  Refer to: [Basic Cluster Configuration Guide](manual/SC/Basic%20Cluster%20Configuration.md)

- **Xshell and Xftp Configuration**  
  Connect Xshell and Xftp to the servers in preparation for subsequent operations.  
  Refer to: [Xshell and Xftp Configuration Guide](manual/SC/Xshell%20and%20Xftp%20Configuration.md)

- **File Import**  
  Use Xftp to upload compressed packages such as Hadoop, Spark, and Java to the root directory of the server.  
  Refer to: [File Import Guide](manual/SC/Data%20Import.md)

- **SSH Configuration**  
  Configure SSH passwordless login between servers to simplify cluster management and improve operational efficiency.  
  Refer to: [SSH Configuration Guide](manual/SC/SSH%20Configuration.md)

- **Java Configuration**  
  Install and configure the Java environment on all servers in preparation for subsequent steps.  
  Refer to: [Java Configuration Guide](manual/SC/Java%20Configuration.md)

- **Eclipse Installation**  
  Install the Eclipse IDE on the master server for Hadoop and Spark project development, debugging, and execution.  
  Refer to: [Eclipse Installation Guide](manual/SC/Eclipse%20Installation.md)

- **Firewall Configuration**  
  Configure firewall rules on the servers to ensure proper connectivity within the cluster.  
  Refer to: [Firewall Configuration Guide](manual/SC/Firewall%20Configuration.md)

## Hadoop Cluster Deployment

- **Hadoop Installation**  
  Install Hadoop on all server nodes and configure the required environment variables, ensuring compatibility with the installed Java version.  
  Refer to: [Hadoop Installation Guide](manual/SC/Hadoop%20Installation.md)

- **Hadoop Environment Variable Configuration**  
  Configure Hadoop environment files such as `hadoop-env.sh` and `yarn-env.sh`.  
  Refer to: [Hadoop Environment Variables Configuration Guide](manual/SC/Hadoop%20Environment%20Variables%20Configuration.md)

- **Hadoop Core Component Configuration**  
  Configure core Hadoop files including `core-site.xml`, `hdfs-site.xml`, `mapred-site.xml`, and `yarn-site.xml`.  
  Refer to: [Hadoop Core Configuration Guide](manual/SC/Hadoop%20Core%20Configuration.md)

- **Worker Node Configuration**  
  Copy Hadoop configuration and related files from the master node to all worker nodes.  
  Refer to: [Hadoop Worker Node Configuration Guide](manual/SC/Hadoop%20Worker%20Node%20Configuration.md)

- **Hadoop Validation**  
  Initialize the NameNode and format HDFS, then start HDFS and YARN services in sequence. Verify that all nodes are properly registered and in an available state.  
  Refer to: [Hadoop Validation Guide](manual/SC/Hadoop%20Validation.md)

## Spark Cluster Deployment

- **Spark Installation**  
  Install Spark on all server nodes and configure the required environment variables, ensuring compatibility with the deployed Hadoop version.  
  Refer to: [Spark Installation Guide](manual/SC/Spark%20Installation.md)

- **Spark Basic Configuration**  
  Configure files such as `spark-env.sh` and `spark-defaults.conf` to centrally manage Spark policies and optimize execution performance and cluster resource utilization.  
  Refer to: [Spark Configuration Guide](manual/SC/Spark%20Configuration.md)

- **Worker Node Configuration**  
  Copy Spark configuration and related files from the master node to all worker nodes.  
  Refer to: [Spark Worker Node Configuration Guide](manual/SC/Spark%20Worker%20Node%20Configuration.md)

- **Spark Validation**  
  Submit example Spark applications or real data analysis tasks to verify the interoperability between Spark and Hadoop clusters. Monitor job execution through the YARN Web UI to ensure that the Spark environment is stable and operational.  
  Refer to: [Spark Validation Guide](manual/SC/Spark%20Validation.md)

## Discussion and Communication

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
If you encounter any issues during the installation process, feel free to open a discussion in the issue section.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Likewise, if you have solutions or suggestions for improvement, you are very welcome to share them and help improve this tutorial together!

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Please feel free to report issues, provide feedback, or suggest improvements on GitHub:  
[Issue Tracker](../../issues)

## License

This project is licensed under the **Apache License 2.0**.
