FROM asciidoctor/docker-asciidoctor:latest

LABEL maintainer="Gerald Schmidt <gerald1248@gmail.com>"
LABEL description="Asciidoctor with diagram plugins"

RUN gem install rdoc 2>/dev/null || echo "caught install error for rdoc"
RUN gem install asciidoctor-diagram && gem install asciidoctor-mathematical && gem install asciidoctor-confluence erd
RUN apk add nodejs nodejs-npm
RUN npm install mermaid.cli
