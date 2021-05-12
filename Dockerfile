FROM amazonlinux:latest

EXPOSE 80

RUN yum -y install git
RUN git clone https://github.com/skuwa229/binary.git
RUN cp binary/main ./
RUN chmod +x main
CMD ./main


