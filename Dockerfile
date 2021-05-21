FROM amazonlinux:latest
WORKDIR /src
COPY src ./src
RUN bash src/install.sh
RUN sh -c 'unzip "./src/scap-content/*.zip" -d ./src/scap-content'
