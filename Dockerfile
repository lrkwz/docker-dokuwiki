FROM nerka/docker-dokuwiki

RUN apk add php7-json
ADD https://github.com/turnermm/ckgedit/archive/master.zip /
RUN unzip /master.zip -d /var/www/lib/plugins/ && mv /var/www/lib/plugins/ckgedit-master /var/www/lib/plugins/ckgedit && rm /master.zip
ADD https://github.com/LotarProject/dokuwiki-template-bootstrap3/zipball/master /
RUN unzip /master -d /var/www/lib/tpl && mv /var/www/lib/tpl/LotarProject-dokuwiki-template-bootstrap3-cd91aa3 /var/www/lib/tpl/bootstrap3 && rm /master