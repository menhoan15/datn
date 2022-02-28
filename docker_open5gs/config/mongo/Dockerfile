FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends mongodb && \
    apt-get autoremove -y && apt-get autoclean

CMD /mnt/mongo/mongo_init.sh
