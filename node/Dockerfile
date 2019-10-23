FROM node:10.16.3

ENV NODE_ENV=development

ARG project_dir=/app/

WORKDIR /app/

ADD app.js $project_dir
ADD public $project_dir
ADD manifest.yml $project_dir
ADD routes $project_dir
ADD ibm-credentials.env $project_dir 
ADD package.json $project_dir
ADD package-lock.json $project_dir

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]
