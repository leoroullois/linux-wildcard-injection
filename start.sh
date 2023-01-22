docker build -t wildcard_lab_image . && \
docker run -it --hostname=ubuntu --name=wildcard_lab wildcard_lab_image
