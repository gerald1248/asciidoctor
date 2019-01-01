FROM asciidoctor/docker-asciidoctor:latest

LABEL maintainer="Gerald Schmidt <gerald1248@gmail.com>"
LABEL description="Asciidoctor with pandoc and additional plugins"

RUN gem install rdoc 2>/dev/null || echo "caught install error for rdoc"
RUN gem install asciidoctor-diagram && gem install asciidoctor-mathematical && gem install asciidoctor-confluence erd
RUN apk add nodejs nodejs-npm
RUN npm install yarn && node_modules/.bin/yarn add mermaid.cli
RUN wget https://github.com/jgm/pandoc/releases/download/2.5/pandoc-2.5-linux.tar.gz -O /tmp/pandoc.tar.gz && \
  tar xvzf /tmp/pandoc.tar.gz --strip-components 1 -C /usr/local/
