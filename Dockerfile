FROM debian:bookworm

MAINTAINER Piero Corasaniti<piero_cory@hotmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
	&& apt-get install -y supervisor \
		openssh-server vim-tiny \
		openbox \
		xterm \		
		x11vnc xvfb \
		pwgen \
		curl \
		iputils-ping \
		lsb-release \
		screenfetch \	
		neofetch \
		exa \
		nano \
	&& apt-get autoclean \
	&& apt-get autoremove \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /root

ADD startup.sh ./
ADD supervisord.conf ./
ADD .bashrc /root

EXPOSE 5900
EXPOSE 22

ENTRYPOINT ["./startup.sh"]
