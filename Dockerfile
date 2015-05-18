FROM docker.io/java:openjdk-8-jdk

ENV ACTIVATOR_VER 1.3.2
 
RUN apt-get install -y unzip

RUN cd /opt \
 && wget http://downloads.typesafe.com/typesafe-activator/${ACTIVATOR_VER}/typesafe-activator-${ACTIVATOR_VER}.zip \
 && unzip typesafe-activator-${ACTIVATOR_VER}.zip \
 && ln -s /opt/activator-${ACTIVATOR_VER} /opt/activator \
 && rm -f /opt/typesafe-activator-${ACTIVATOR_VER}.zip
 
# Expose ports.
EXPOSE 8888
 
# Define an entry point.
ENTRYPOINT ["/opt/activator/activator", "ui", "-Dhttp.address=0.0.0.0"]
