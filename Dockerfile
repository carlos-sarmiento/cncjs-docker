FROM node:10

RUN npm install -g npm@latest
RUN npm install -g cncjs@latest --unsafe-perm

RUN apt update -y && apt install udev curl -y && rm -rf /var/lib/apt/lists/*

EXPOSE 8000
CMD ["cncjs", "-vv", "-c", "/cncjs/cncrc.json"]
