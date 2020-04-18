FROM node:10

RUN npm install -g npm@latest
RUN npm install -g cncjs@latest --unsafe-perm

EXPOSE 8000
CMD ["cncjs"]
