FROM index.docker.io/centos:7

ENV version 1.22

RUN yum -y install centos-release-scl yum-utils \
 && yum-config-manager --enable rhel-server-rhscl-7-rpm \
 && yum -y localinstall https://yum.theforeman.org/releases/${version}/el7/x86_64/foreman-release.rpm \
 && yum -y install tfm-rubygem-hammer_cli tfm-rubygem-hammer_cli_\* \
 && yum -y clean all
 
CMD /usr/bin/hammer
