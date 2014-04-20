#
# ElasticSearch Dockerfile
#
# https://github.com/andrewrothstein/typesafe-activator.git
#
 
# Pull base image.
FROM dockerfile/java
 
# Install TypeSafe Activator v1.1.1
 
RUN wget http://downloads.typesafe.com/typesafe-activator/1.1.1/typesafe-activator-1.1.1.zip
RUN unzip typesafe-activator-1.1.1.zip
RUN mv activator-1.1.1 /opt/activator
RUN rm typesafe-activator-1.1.1.zip
 
# Expose ports.
EXPOSE 8888
 
# Define an entry point.
ENTRYPOINT /opt/activator/activator ui -Dhttp.address=0.0.0.0
