FROM node:10.16.3-buster

ENV NODE_ENV=development

ARG project_dir=/app/

WORKDIR $project_dir

ADD node $project_dir

RUN npm -v
RUN npm i node-pre-gyp@0.10.3
RUN node -v
RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
