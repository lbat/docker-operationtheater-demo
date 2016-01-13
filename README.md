# docker-operationtheater-demo
Docker Image to demo the operationtheater module for OpenMRS

At the moment, this image uses the operationtheater module that was the result of Google Summer of Code 2014 - see [this](https://github.com/lbat/openmrs-module-operationtheater/commit/edab879fac9e815df2b5efaf11c659b3075fa910) commit.

It is based on OpenMRS 2.0 and openmrs-core 1.9.7
openmrs-core has been modified slightly due to conflicting versions of the jodatime library that were added from different modules.
As a solution, jodatime was added as dependency to [openmrs-core](https://github.com/lbat/openmrs-core/tree/1.9.7_otm_jodatime_fix) and manually removed from the modules' omod files.
This workaround did not make it into upstream.

The modules' functionality is described in the Google Summer of Code 2014 [final presentation](https://www.youtube.com/watch?v=EkFhgewPEnc).

## Build (optional)

This step can be skipped if the image has already been uploaded to [docker hub](https://hub.docker.com/r/breitwieser/demo-openmrs-module-operationtheater/). In this case proceed with the instructions in [Run](## Run)

Execute the following commands to build the docker image.

```bash
# check out this repository
git clone https://github.com/lbat/docker-operationtheater-demo.git
cd docker-operationtheater-demo
# build docker image - this will take a while
sudo docker build -t breitwieser/demo-openmrs-module-operationtheater:gsoc14 .
```

## Run

```bash
# create docker container from image and connect shell to it
sudo docker run -i -t -p 8080:8080 breitwieser/demo-openmrs-module-operationtheater:gsoc14
```

The created container automatically runs `mvn jetty:run`. Afterwards the OpenMRS webapp can be accessed from the browser at: http://localhost:8080/openmrs/ using the following user credentials

* Username: admin
* Password: Admin123

Alternatively, one can also specify a command that should be executed - e.g. `/bin/bash`
```bash
sudo docker run -i -t -p 8080:8080 breitwieser/demo-openmrs-module-operationtheater:gsoc14 /bin/bash
```
In this case the container will not be destroyed after exiting `mvn jetty:run` using `CTRL + C`. Instead a shell is created, ready to accept commands.
