FROM phusion/baseimage

ADD mono /tmp/mono

# add mono github source and build script
COPY build_mono_from_source.sh /tmp/

# update system and install tools necessary to build mono from source
RUN apt-get update
RUN apt-get install autoconf g++ gettext git libtool make mono-mcs -y

RUN /tmp/build_mono_from_source.sh

RUN rm -rf /tmp/*
