FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.4.0.beta14

RUN gem install adiwg-mdtranslator --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["mdtranslator"]
CMD ["--help"]
