FROM amazonlinux:latest

RUN yum update -y
RUN yum install -y gcc44 gcc-c++ libgcc44 cmake wget openssl-devel curl

# Install nodejs
# http://www.tecmint.com/install-nodejs-npm-in-centos-ubuntu/

RUN curl --silent --location https://rpm.nodesource.com/setup_6.x | bash -
RUN yum install -y nodejs
RUN npm install -g serverless
