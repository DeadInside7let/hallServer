FROM ubuntu:18.04

LABEL author="Rodionov 221-3210"

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update
RUN apt-get install qt5-default qtbase5-dev qt5-qmake -y
RUN apt-get install build-essential -y

WORKDIR /Rodionov_221-3210
COPY *.cpp .
COPY *.h .
COPY *.pro .

RUN qmake hallServer.pro
RUN make

ENTRYPOINT ["./hallServer"]
