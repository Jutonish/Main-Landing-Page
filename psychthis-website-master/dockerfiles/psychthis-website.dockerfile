FROM node:15.5-alpine3.12

ARG base_url

ENV BASE_URL=${base_url}

ADD ./dist ./pyschthis/dist

WORKDIR ./pyschthis

RUN npm i -g serve

CMD serve -n -s dist -l tcp://$BASE_URL
