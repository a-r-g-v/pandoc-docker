FROM debian:jessie

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y upgrade && apt-get install -y apt-utils wget vim

# thanks to https://github.com/ksoichiro/dockerfiles
ENV HOME /root

RUN apt-get install -y texlive-xetex texlive-lang-japanese texlive-luatex texlive xzdec pandoc && \
    tlmgr init-usertree

ENV PATH $HOME/.cabal/bin:$PATH
VOLUME /workspace
WORKDIR /workspace

