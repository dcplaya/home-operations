FROM ubuntu:focal

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true

RUN apt-get -qq update \
    && apt-get install -qqy --no-install-recommends \
        ca-certificates \
        cpio \
        dos2unix \
        fakeroot \
        genisoimage \
        git \
        gzip \
        isolinux \
        p7zip-full \
        pwgen \
        curl \
        whois \
        xorriso \
    && apt autoremove -y \
    && apt clean \
    && rm -rf \
        /tmp/* \
        /var/lib/apt/lists/* \
        /var/cache/apt/* \
        /var/tmp/*        

RUN curl -L -o ubuntu-20.04.1-live-server-amd64.iso https://mirror.umd.edu/ubuntu-iso/20.04.1/ubuntu-20.04.1-live-server-amd64.iso
RUN 7z x ubuntu-20.04.1-live-server-amd64.iso -oiso

COPY node00.yaml autoinstall-node00.yml
COPY node01.yaml autoinstall-node01.yml
COPY node02.yaml autoinstall-node02.yml
COPY node03.yaml autoinstall-node03.yml
COPY node04.yaml autoinstall-node04.yml
COPY entrypoint.sh .

RUN mkdir -p /build
VOLUME [ "/build" ]

ENTRYPOINT ["/entrypoint.sh"]