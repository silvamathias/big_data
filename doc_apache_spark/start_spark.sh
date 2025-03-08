#!/bin/bash

#cria um container spark para usar com pyspark
#sudo docker run -it --mount type=bind,src=/mnt/sda_04/doc_file,dst=/mnt --volume /mnt/sda_04/doc_config_file/spark:/opt/spark/work-dir spark:python3 /opt/spark/bin/pyspark

sudo docker run -it \
--mount type=bind,src=/mnt/sda_04/doc_file,dst=/mnt \
--publish=8070:8080 \
--publish=7077:7077 \
--volume /mnt/sda_04/doc_config_file/spark:/opt/spark/work-dir \
--name py_spark_v1 \
spark:python3 /opt/spark/bin/pyspark
