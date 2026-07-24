`docker run -d --name web2 nginx`로 컨테이너를 하나 새로 실행합니다. `-d`는 백그라운드 실행,
`--name web2`는 컨테이너에 "web2"라는 이름을 붙이는 옵션입니다.

```
docker run -d --name web2 nginx
```

`nginx` 이미지가 로컬에 이미 있으므로(1주차 3차시에서 받아둔 이미지) 바로 실행되며, 컨테이너의
긴 ID 해시 값이 출력되고 프롬프트가 바로 돌아옵니다.

이 컨테이너로 앞으로 stop → start → logs → exec까지 이어서 실습합니다.
