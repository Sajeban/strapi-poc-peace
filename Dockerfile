FROM node:14

RUN yarn global add strapi

RUN mkdir /srv/app && chown 1000:1000 -R /srv/app
WORKDIR /srv/app

COPY . .
ENV NODE_ENV development
RUN yarn add sharp
RUN yarn install
RUN yarn build


EXPOSE 1337

CMD ["yarn", "develop"]