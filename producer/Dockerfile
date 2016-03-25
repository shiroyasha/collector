FROM debian

RUN apt-get update -y && apt-get install wget -y

RUN wget https://github.com/papertrail/remote_syslog2/releases/download/v0.17-beta-pkgs/remote-syslog2_0.17_amd64.deb

RUN dpkg -i remote-syslog2_0.17_amd64.deb

ADD publish_stuff.sh publish_stuff.sh
ADD log_files.yml /etc/log_files.yml

CMD remote_syslog & bash publish_stuff.sh | tee test.out
