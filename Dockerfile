FROM quay.io/podman/stable:v3.4.4

RUN dnf install -y podman-compose \
  	&& dnf clean all \
  	&& rm -rf /var/cache/yum

COPY apps/ /apps

RUN mkdir /storage

COPY storage.conf /etc/containers/

CMD cd /apps && bash run-apps.sh