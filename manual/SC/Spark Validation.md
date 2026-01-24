<h1 align="center">
  <br>
  <strong> Spark 验证指南 </strong>
  <br>
</h1>

<p align="center">
  Languages:
  <a href="../SC/Spark%20Validation.md"> 简体中文 </a> ·
  <a href="../EN/Spark%20Validation_en.md"> English </a>
</p>

1. **验证环境变量**  
   分别在服务器各个节点上使用`echo $SPARK_HOME`指令检查目录配置是否正确。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P1.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P2.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P3.png" width="60%">
</p>

2. **检查 yarn 状态**  
   启动 Hadoop 集群后，在`Master`上输入`yarn node -list`检查 yarn 的运行状态。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P4.png" width="60%">
</p>

3. **启动 Spark**  
   在`Master`上使用`$SPARK_HOME/sbin/start-history-server.sh`指令启动`Spark`。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P5.png" width="60%">
</p>

4. **进程运行验证**  
   在`Master`上使用`jps`检查进程是否正常启动，`Master`节点应该出现`HistoryServer`输出。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P6.png" width="60%">
</p>

5. **测试 Spark 运行**  
   在`Master`上依次输入`spark-submit \`、`--class org.apache.spark.examples.SparkPi \`、`--master yarn \`、`--deploy-mode cluster \`、`/home/user/Spark/examples/jars/spark-examples_2.12-3.5.7.jar \`和`10`运行测试，使用`yarn logs -applicationId application_******`查看 Spark 的日志结果是否正常。操作如图：  
   **注：**
   将`yarn logs -applicationId application_******`中的`******`换为实际的地址。
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P7.png" width="60%">
</p>
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P8.png" width="60%">
</p>

6. **Web 运行验证**  
   在`Master`的`Firefox`浏览器上进入`http://Master:18080`网页检查 Spark 的 Web 访问是否正常。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P9.png" width="60%">
</p>

7. **关闭 Hadoop**  
   在`Msater`上使用`$SPARK_HOME/sbin/stop-history-server.sh`指令关闭`Spark`。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P10.png" width="60%">
</p>

8. **进程关闭验证**  
   在`Master`上使用`jps`检查进程是否正常关闭，`Master`节点没有出现`HistoryServer`输出。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P11.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
