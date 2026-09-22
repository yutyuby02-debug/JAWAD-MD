FROM node:lts-buster

RUN apt-get update && apt-get install -y ffmpeg imagemagick && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/yutyuby02-debug/JAWAD-MD.git /root/JawadTechX

WORKDIR /root/JawadTechX

COPY package.json .

RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
