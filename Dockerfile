FROM quay.io/totem/java-oracle-base:7

WORKDIR /opt/grails

ADD grails /opt/grails

RUN ./grailsw refresh-dependencies --non-interactive

ENTRYPOINT ["/bin/bash", "/opt/grails/grailsw"]
CMD ["-version"]
