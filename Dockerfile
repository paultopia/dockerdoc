FROM ubuntu:18.04

RUN apt-get update && apt-get install -y apt-transport-https

RUN apt-get update -y \
  && apt-get install -y -o Acquire::Retries=10 --no-install-recommends \
    texlive \
    texlive-xetex \
    texlive-fonts-recommended \
    texlive-latex-recommended \
    texlive-font-utils \
    texlive-generic-recommended \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    texlive-lang-english \
    texlive-science \
    fontconfig \
    lmodern \
    python3 \
    python3-pip \
    bash \
    haskell-platform 

RUN cabal update && cabal install pandoc && cabal install pandoc-citeproc