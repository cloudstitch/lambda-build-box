FROM amazonlinux:latest

RUN yum update -y
RUN yum install -y gcc44 gcc-c++ libgcc44 cmake wget openssl-devel

RUN npm install --global npm@latest
