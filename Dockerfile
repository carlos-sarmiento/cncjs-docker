FROM node:10

RUN npm install -g npm@latest
# RUN npm install -g cncjs@latest --unsafe-perm

RUN apt update -y && apt install udev -y && rm -rf /var/lib/apt/lists/*

ENV PATH="/cncjs/bin:${PATH}"
ENV NODE_ENV="development"

EXPOSE 8000
CMD ["cncjs", "--controller", "Grbl", "-v", "-c", "/config/cncrc.json"]
