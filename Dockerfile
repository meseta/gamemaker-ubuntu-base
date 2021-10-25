FROM ubuntu:18.04

RUN apt-get update && apt-get install --no-install-recommends --yes \
      libxxf86vm1 \
      libgl1 \
      libssl1.1 \
      libxrandr2 \
      libglu1-mesa \
      libcurl4 \
      xvfb \
      && rm -rf /var/lib/apt/lists/*

WORKDIR /root
COPY entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
