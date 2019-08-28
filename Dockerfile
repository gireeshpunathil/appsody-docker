FROM quay.io/buildah/stable:latest
COPY setupAndRunExtract.sh .
RUN chmod +x setupAndRunExtract.sh
RUN curl -L https://github.com/gireeshpunathil/appsody/blob/master/release/appsody.tar.gz?raw=true --output appsody.tar.gz
RUN gunzip appsody.tar.gz
RUN tar xvf appsody.tar
RUN mv appsody /usr/bin
RUN chmod +x /usr/bin/appsody
