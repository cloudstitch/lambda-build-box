FROM amazonlinux:latest

RUN yum update -y
RUN yum install -y gcc44 gcc-c++ libgcc44 cmake wget openssl-devel curl bzip2

# For PhantomJS
RUN yum install -y make flex bison gperf ruby freetype-devel fontconfig-devel libicu-devel sqlite-devel libpng-devel libjpeg-devel

# Install nodejs
# http://www.tecmint.com/install-nodejs-npm-in-centos-ubuntu/

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum install -y nodejs
RUN npm set progress=false
RUN npm install -g serverless@1.10.1
RUN npm install -g typescript@2.2.2
RUN npm install -g chai describe it mocha gulp
RUN npm install -g bower
RUN npm install -g firebase-tools
RUN yum install -y git-all

# For the Amazon CLI
RUN yum install -y python python-setuptools python-pip python-wheel groff less
RUN python-pip --no-cache-dir install awscli 
