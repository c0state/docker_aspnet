FROM phusion/baseimage:0.9.12

# use a volume to stage mono build, otherwise the docker image size gets large
VOLUME /buildtemp

# update system and install tools necessary to build mono from source
RUN apt-get update
RUN apt-get install autoconf g++ gettext git libtool make mono-complete -y

# add mono github source and build script
COPY build_mono_from_source.sh /buildtemp/

RUN chmod +x /buildtemp/build_mono_from_source.sh
RUN /buildtemp/build_mono_from_source.sh

RUN rm -rf /buildtemp/*
