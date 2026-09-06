방금 만든 `mydata` 볼륨을 사용해 새 컨테이너를 실행합니다.

```
docker run -d -v mydata:/usr/share/nginx/html --name webvol2 nginx
```

컨테이너의 긴 ID 해시 값이 출력되고 프롬프트가 바로 돌아오면 정상입니다. `docker ps`로
`webvol2`가 `Up` 상태로 실행 중인지 확인해보세요.
