FROM swaggerapi/swagger-ui:latest

LABEL maintainer="Miguel Ortiz <miguelortiz1994@outlook.com>"
RUN apk add apache2-utils 

ARG USERNAME=analyzer
ARG PASSWORD=spaceship999

RUN htpasswd -c -b /etc/nginx/.htpasswd ${USERNAME} ${PASSWORD} && cat /etc/nginx/.htpasswd

RUN sed -i "s|location / {|location / {\n\tauth_basic \"Restricted Content\";\n\tauth_basic_user_file /etc/nginx/.htpasswd;\n|g" /etc/nginx/conf.d/default.conf
