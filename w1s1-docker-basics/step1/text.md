`docker run`은 "이미지를 실행해서 컨테이너로 만들어라"는 명령어입니다.

`hello-world` 이미지가 로컬(이 터미널)에 없으면 Docker Hub에서 자동으로 내려받은(pull) 뒤 실행합니다.

```
docker run hello-world
```

**실행 결과 예시**

```
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
...
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

"Hello from Docker!" 메시지가 보이면 성공입니다.
