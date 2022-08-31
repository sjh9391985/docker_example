# 1. 시작은 base 이미지로 함. 16: 노드버전/ alpine: 최소단위의 리눅스버전
FROM node:16-alpine 

# 2. 도커의 어떤 경로에서 프로젝트를 복사할지 명시해줘야함.
WORKDIR /app

# 3. app dir로 이동후 package~ 파일들을 복사해옴.
COPY package.json package-lock.json ./

# 4. node가 아닌 다른환경에서 도커사용시 package-lock.json에 명시된 정확한 버전을 설치해줌.
RUN npm ci

# 5. 소스파일을 복사
COPY index.js .

# 6. ENTRYPOINT를 통해서 node 와 index.js를 실행해라고 명시해줌. 도커파일은 레이어 형태로 작성해주는게 좋음
ENTRYPOINT [ "node", "index.js" ]
