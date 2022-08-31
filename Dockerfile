# 1. 시작은 base 이미지로 함. 16: 노드버전/ alpine: 최소단위의 리눅스버전
FROM node:16-alpine 

# 2. 도커의 어떤 경로에서 프로젝트를 복사할지 명시해줘야함.
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm ci

COPY index.js .

ENTRYPOINT [ "node", "index.js" ]
