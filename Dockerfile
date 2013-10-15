FROM u.melt.sh/totem/java-oracle-base:7

WORKDIR /opt/grails

ADD grails /opt/grails

RUN ./grailsw refresh-dependencies

ENTRYPOINT ["/bin/bash", "/opt/grails/grailsw"]
CMD ["-version"]
