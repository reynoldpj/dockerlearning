FROM ubuntu:20.04
MAINTAINER Reynold P J "rnldpj@gmail.com"
RUN DEBIAN_FRONTEND=noninteractive apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade
RUN DEBIAN_FRONTEND=noninteractive apt-get -yq install net-tools nginx python3.8 python3-pip curl
RUN pip install --upgrade pip
RUN pip install falcon gunicorn
RUN rm -f /etc/nginx/sites-enabled/default
COPY nginx/myapp /etc/nginx/sites-enabled/
COPY falcontest.py /var/www/falcontest.py
COPY startupscript.sh ./startupscript.sh
EXPOSE 80
ENTRYPOINT ["./startupscript.sh"]
