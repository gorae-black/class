`docker run -d --name web2 nginx`로 컨테이너를 하나 새로 실행합니다. `-d`는 백그라운드 실행,
`--name web2`는 컨테이너에 "web2"라는 이름을 붙이는 옵션입니다.

```
docker run -d --name web2 nginx
```

컨테이너의 긴 ID 해시 값이 출력되고 프롬프트가 바로 돌아오면 정상입니다.
