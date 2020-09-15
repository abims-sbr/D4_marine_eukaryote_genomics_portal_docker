# Marine Eukaryote Genomics Portal Docker

EOSC-Life Demonstrator 4

## Docker Galaxy Stable
This Docker container is based on the quay.io/bgruening/galaxy:20.05

https://github.com/bgruening/docker-galaxy-stable

## Prerequisites
### Docker

https://www.docker.com

## Usage

### Build the Docker image

```bash
docker build -t abims/eosc-d4 .
docker images
docker run  -d -p 8080:80  eosc-d4
58e06801c2229c39aec39f06361b068bbfc84ae00cac3ede7db0bca256922822
docker logs -f 58e06801c2229c39aec39f06361b068bbfc84ae00cac3ede7db0bca256922822
```

Access to the Galaxy instance: http://localhost:8080/