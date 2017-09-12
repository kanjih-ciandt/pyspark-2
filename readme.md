# Docker Image hkanjih/pyspark-2

Docker container to run PySpark based on Spark 2.0.2 plus these packages:
- opencv-python 
- scikit-image 
- google-cloud 
- google_compute_engine
 

This docker image baseline is: [fokkodriesprong/docker-pyspark-2](https://hub.docker.com/r/fokkodriesprong/docker-pyspark-2/) 

#### Docker Tree:
- [python:2](https://hub.docker.com/_/python/)->  [fokkodriesprong/docker-pyspark-2](https://hub.docker.com/r/fokkodriesprong/docker-pyspark-2/)  -> hkanjih/pyspark-2

#### Packages/Software 

| Origin | Tools |
| ------ | ------ |
| [python:2](https://hub.docker.com/_/python/) | python 2 |
| [fokkodriesprong/docker-pyspark-2](https://hub.docker.com/r/fokkodriesprong/docker-pyspark-2/)  | jdk1.8.0_144, SPARK, pylint, pytest, coverage, numpy, setuptools, scipy, findspark, pyspark |
| hkanjih/pyspark-2|opencv-python, scikit-image google-cloud, google_compute_engine |


### Docker

To start container and execute python on interate mode
```sh
docker run -p 8080:8080 -p 6060:6060 -p 7077:7077 -p 52022:22 hkanjih/pyspark-2
docker exec -it <container id> python
```

To execute a file:
```sh
docker run -it  -v $(pwd):/home/deploy hkanjih/pyspark-2  python /home/deploy/<pythonfile>
```
To execute unittest using this container:
```sh
#!/bin/bash
tests=($(ls <folder with test scrips>/*.py | grep -v init)); IFS=,; eval docker run -it  -v $(pwd):/home/deploy hkanjih/pyspark-2  pytest "/home/deploy/{${tests[*]}}"
```