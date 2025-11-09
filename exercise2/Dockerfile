FROM ubuntu:24.04

RUN apt-get update

RUN apt-get install -y openjdk-8-jdk

RUN apt-get install -y python3

RUN apt-get install -y scala

RUN apt-get install -y vim

RUN apt-get install -y curl gnupg

RUN echo "deb https://repo.scala-sbt.org/scalasbt/debian all main" > /etc/apt/sources.list.d/sbt.list

RUN curl -sL "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x2EE0EA64E40A89B84B2DF73499E82A75642AC823" | gpg --dearmor -o /etc/apt/trusted.gpg.d/sbt.gpg

RUN apt-get update && apt-get install -y sbt

CMD ["/bin/bash"]