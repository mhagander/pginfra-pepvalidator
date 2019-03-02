FROM debian:stretch
RUN apt-get -y update && apt-get -y dist-upgrade && apt-get -y install pep8 && apt-get clean
RUN mkdir /repo
COPY pep_validate.sh /
CMD [ "/pep_validate.sh" ]