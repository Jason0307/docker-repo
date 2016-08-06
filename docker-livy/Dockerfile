FROM sequenceiq/spark:1.6.0
MAINTAINER jason <zrb0307@gmail.com>

ADD livy-server-0.2.0.zip .
RUN unzip livy-server-0.2.0.zip -d /usr/local
	
# Add custom files, set permissions
COPY entrypoint.sh /usr/entrypoint.sh
RUN chmod a+x /usr/entrypoint.sh
RUN export SPARK_HOME=/usr/local/spark
RUN export HADOOP_CONF_DIR=/usr/local/hadoop/etc/hadoop

# Expose port
EXPOSE 8998

#ENTRYPOINT ["/usr/entrypoint.sh"]
