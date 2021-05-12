FROM amazonlinux:latest

EXPOSE 80

RUN yum -y install wget
RUN wget https://github.com/skuwa229/binary/blob/main/main
RUN chmod +x main
CMD ./main

