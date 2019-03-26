FROM ubuntu:18.04
RUN apt-get update
RUN apt-get -y install wget libicu60 libxml2 libbsd-dev libnghttp2-14 librtmp1 libgssapi-krb5-2 libldap-2.4-2
WORKDIR /tmp
RUN wget https://github.com/thesparklabs/openvpn-configuration-generator/releases/download/1.0.4/openvpn-configuration-generator_18.04_1.0.4-1.deb
RUN dpkg --install openvpn-configuration-generator_18.04_1.0.4-1.deb
RUN apt-get clean autoclean && apt-get autoremove --yes && rm -rf /var/lib/{apt,dpkg,cache,log}/


