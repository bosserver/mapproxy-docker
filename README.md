# mapproxy-docker
Docker Container for Mapproxy with preconfigured Maps


vg2500_bld.shp Quelle: https://hub.arcgis.com/datasets/ae25571c60d94ce5b7fcbf74e27c00e0/about


start with:

docker volume create mapproxy-tiles

docker build -t mapproxy .

docker run --rm --name mapproxy -it -d -p 8081:8080 -v mapproxy-tiles:/tiles_cache/ mapproxy



preeheat with: 

docker exec mapproxy mapproxy-seed -f mapproxy.yaml -c 4 seed.yaml

