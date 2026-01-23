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
  <img src="../../image/Spark%20Configuration%20Diagram/P.png" width="60%">
</p>

2. **检查 yarn 状态**  
   启动 Hadoop 集群后，在`Master`上输入`yarn node -list`检查 yarn 的运行状态。操作如图：  
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P.png" width="60%">
</p>

3. **运行测试验证**  
   在`Master`上依次输入`spark-submit \`、`--class org.apache.spark.examples.SparkPi \`、`--master yarn \`、`--deploy-mode cluster \`、`/home/user/Spark/examples/jars/spark-examples_2.12-3.5.7.jar \`和`10`运行官方的验证测试。操作如图：
<p align="center">
  <img src="../../image/Spark%20Configuration%20Diagram/P.png" width="60%">
</p>

---
<p align="center">
  <a href="../../README.md"><strong> 返回主页 </strong></a>
</p>
