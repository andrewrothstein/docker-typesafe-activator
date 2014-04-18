## Typesafe Activator Dockerfile


### Dependencies

* [dockerfile/java](http://dockerfile.github.io/#/java)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download from public [Docker Registry](https://index.docker.io/): `docker pull andrewrothstein/typesafe-activator`

   (alternatively, you can build an image from Dockerfile: `docker build -t="andrewrothstein/typesafe-activator" github.com/andrewrothstein/typesafe-activator`)


### Usage

    docker run -d -p 8888:8888 andrewrothstein/typesafe-activator
