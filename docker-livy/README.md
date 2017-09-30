# docker-livy
A Docker image for [Livy, the REST Spark Server](https://github.com/cloudera/livy).
## Build

Download the livy package from [here](http://archive.cloudera.com/beta/livy/livy-server-0.2.0.zip) and then put to the Dockerfile folder

`docker build -t livy .`

## Running 

The image can be run with 

`docker run -p 8998:8998 -d livy`

which will expose the port `8998` on the Docker host for this image.

## Details

Have a look at the [official docs](https://github.com/cloudera/livy#rest-api) to see how to use the Livy REST API.
