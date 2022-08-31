# docker-example

1. terminal > `npm init -y`
2. terminal > `npm i express`
3. 도커파일 작성
4. 도커이미지 생성
    - terminal > `docker build -f Dockerfile -t docker_test .`
5. 생성된 이미지 파일 실행
    - terminal > `docker run -d -p 8080:8080 docker_test`