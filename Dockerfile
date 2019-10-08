FROM debian:stable

# Inspired by:
# https://github.com/aergus/dockerfiles

RUN apt-get update && apt-get install -y \
  texlive \
  texlive-lang-english \
  texlive-lang-german \
  texlive-bibtex-extra \
  texlive-latex-extra \
  texlive-plain-generic \
  biber \
  make && \
  apt-get --purge remove -y .\*-doc$ && \
  apt-get clean -y && \
  rm -rf /var/lib/apt/lists/*

VOLUME /latex

WORKDIR /latex

