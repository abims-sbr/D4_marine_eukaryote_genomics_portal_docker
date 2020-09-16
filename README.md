[![Build Status](https://travis-ci.org/abims-sbr/D4_marine_eukaryote_genomics_portal_docker.svg?branch=master)](https://travis-ci.org/abims-sbr/D4_marine_eukaryote_genomics_portal_docker)

# Marine Eukaryote Genomics Portal Docker

Please check the project reposiroty: [eosc-life/D4_marine_eukaryote_genomics_portal](https://github.com/eosc-life/D4_marine_eukaryote_genomics_portal)

## Docker Galaxy Stable
This Docker container is based and built on the bgruening/galaxy:20.05 docker image

https://github.com/bgruening/docker-galaxy-stable

## Prerequisites
### Docker

https://www.docker.com

## Usage

### From the ready to run Docker image

A Docker image is available on [quay.io](https://quay.io/repository/abimssbr/d4_marine_eukaryote_genomics_portal_docker?tab=info)

```
$ docker run -d -p 8080:80 quay.io/abimssbr/d4_marine_eukaryote_genomics_portal_docker
c22c76071c2a171598974a2adffe1eda0e3a85821f92a9f40a8f1588a47022cc
$ docker logs -f c22c76071c2a171598974a2adffe1eda0e3a85821f92a9f40a8f1588a47022cc
[...]
serving on http://127.0.0.1:8080
[...]
```

Access to the Galaxy instance: http://localhost:8080/

### Build yourself the Docker image

You can custom the Dockerfile and so the Docker image by following the docker-galaxy-stable [documentation](https://github.com/bgruening/docker-galaxy-stable)


```bash
docker build -t you/d4_marine_eukaryote_genomics_portal_docker .
docker images
docker run  -d -p 8080:80  you/d4_marine_eukaryote_genomics_portal_docker
58e06801c2229c39aec39f06361b068bbfc84ae00cac3ede7db0bca256922822
docker logs -f 58e06801c2229c39aec39f06361b068bbfc84ae00cac3ede7db0bca256922822
[...]
serving on http://127.0.0.1:8080
[...]
```

Access to the Galaxy instance: http://localhost:8080/