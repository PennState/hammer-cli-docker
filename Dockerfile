FROM debian:9
RUN apt-get update \
    && apt-get -y install wget vim gnupg2 \
    && echo "deb http://deb.theforeman.org/ stretch 1.22" > /etc/apt/sources.list.d/foreman.list \
    && wget -q https://deb.theforeman.org/foreman.asc -O- | apt-key add - \
    && apt-get update \
    && apt-get install -y ruby-hammer-cli ruby-hammer-cli-foreman \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/bin/bash"]
