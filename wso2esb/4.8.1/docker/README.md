# WSO2 AS 5.2.1 Dockerfile

WSO2 AS 5.2.1 Dockerfile defines required resources for building a Docker image with WSO2 AS 5.2.1.

## How to build

(1) Copy wso2as-5.2.1 binary pack to the packages folder:

* [wso2as-5.2.1.zip](http://wso2.com/products/application-server/)

(2) Generate template module `wso2as-5.2.1-template-module-<PROJECT_VERSION>.zip` as described in [README.md](https://github.com/wso2/private-paas-cartridges/blob/master/wso2as/5.2.1/template-module/README.md) under "Creating AS Template Module for Private PaaS" section. Then copy the resulting Zip file to `packages` folder.


(3) Run build.sh file to build the docker image. (This will copy the plugins and template module to the docker image)
```
sh build.sh
```

(4) List docker images:
```
docker images
```
(5) If successfully built, docker image similar to following should display.
```
wso2/as-5.2.1        4.1.1              ac57800e96c2        2 minutes ago         777.6 MB
```
## Docker environment variables
```
PROJECT_VERSION - WSO2 Private PaaS Cartridge Repo Version
PCA_HOME - Apache Stratos Python Cartridge Agent Home
JAVA_HOME - JAVA HOME
CONFIGURATOR_HOME - WSO2 Private PaaS Configurator Home
WSO2_SERVER_TYPE - WSO2 Carbon Server type
WSO2_SERVER_VERSION - WSO2 Carbon Server version
TEMPLATE_MODULE_NAME - PPaaS Carbon Server template module name
```