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

COPY vm00.yaml autoinstall-vm00.yml
COPY vm01.yaml autoinstall-vm01.yml
COPY vm02.yaml autoinstall-vm02.yml
COPY vm03.yaml autoinstall-vm03.yml
COPY entrypoint.sh .

RUN mkdir -p /build
VOLUME [ "/build" ]

ENTRYPOINT ["/entrypoint.sh"]