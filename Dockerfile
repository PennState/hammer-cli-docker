FROM index.docker.io/centos:7

ENV foreman_version 1.22
ENV katello_version 3.12

RUN yum -y install centos-release-scl yum-utils \
 && yum-config-manager --enable rhel-server-rhscl-7-rpm \
 && yum -y localinstall https://yum.theforeman.org/releases/${foreman_version}/el7/x86_64/foreman-release.rpm \
 && yum -y localinstall https://fedorapeople.org/groups/katello/releases/yum/${katello_version}/katello/el7/x86_64/katello-repos-latest.rpm \
 && yum -y install tfm-rubygem-hammer_cli tfm-rubygem-hammer_cli_\* \
 && yum -y clean all

RUN useradd -m hammer
USER hammer
CMD /usr/bin/hammer
