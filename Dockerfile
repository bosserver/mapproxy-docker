FROM debian:10

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y python3-pil python3-yaml python-pyproj
RUN apt-get install -y libgeos-dev python-lxml libgdal-dev python-shapely
RUN apt-get install -y python-pip
RUN pip install MapProxy

ADD mapproxy.yaml mapproxy.yaml
ADD niedersachsen.geojson niedersachsen.geojson
ADD seed.yaml seed.yaml
ADD run /usr/local/bin/run
#RUN mapproxy-util serve-develop mapproxy.yaml
CMD mapproxy-util serve-develop mapproxy.yaml
EXPOSE 8080
