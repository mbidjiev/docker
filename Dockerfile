FROM ubuntu:latest
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Install YARP
RUN apt-get update
RUN apt-get install -y gnupg2
RUN echo "deb http://www.icub.org/ubuntu focal contrib/science" > /etc/apt/sources.list.d/icub.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 57A5ACB6110576A6
RUN apt-get update
RUN apt-get install -y yarp
# Check YARP installation
RUN yarp read /portread
