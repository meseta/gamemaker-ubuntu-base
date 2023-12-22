FROM ubuntu:20.04

# needed to instal libssl1.0-dev
RUN echo "deb http://security.ubuntu.com/ubuntu xenial-security main" >> /etc/apt/sources.list

RUN apt-get update && apt-get install --no-install-recommends --yes \
      libxxf86vm1 \
      libgl1 \
      libssl1.1 \
      libxrandr2 \
      libglu1-mesa \
      libcurl4 \
      libopenal1 \
      xvfb \
      libssl1.0.0 \
	libcurl3-gnutls \
      ca-certificates \
      lsb-release \
      && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
