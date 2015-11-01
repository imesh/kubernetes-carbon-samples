# ------------------------------------------------------------------------
#
# Copyright 2005-2015 WSO2, Inc. (http://wso2.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
#
# ------------------------------------------------------------------------

FROM debian:7.7
MAINTAINER dev@wso2.org

ENV DEBIAN_FRONTEND noninteractive

# JDK
ENV JDK_VERSION 1.7.0_60
ENV JDK_TAR_FILE jdk-7u60-linux-x64.tar.gz
ENV JAVA_HOME /opt/jdk${JDK_VERSION}

# Configurator
ENV CONFIGURATOR_VERSION 4.1.1
ENV CONFIGURATOR_NAME wso2ppaas-configurator-${CONFIGURATOR_VERSION}
ENV CONFIGURATOR_HOME /opt/${CONFIGURATOR_NAME}

# Docker Issue #9299
ENV TERM xterm

WORKDIR /opt/

# -----------------------
# Install pre-requisites
# -----------------------

RUN apt-get update && apt-get install -y python python-pip python-dev gcc zip vim 
RUN pip install jinja2

# ------------------------
# Copy JDK & configurator
# ------------------------
ADD  packages/${JDK_TAR_FILE} /opt/
COPY packages/${CONFIGURATOR_NAME}.zip /opt/

RUN unzip /opt/${CONFIGURATOR_NAME}.zip -d /opt/ && \
    rm /opt/${CONFIGURATOR_NAME}.zip
