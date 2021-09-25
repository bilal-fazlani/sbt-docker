FROM ubuntu:xenial

#----------- BUILD --------------
COPY ./sbt-setup.sh /app/
WORKDIR /app
ENV PATH="/root/.local/share/coursier/bin:${PATH}"
RUN ./sbt-setup.sh