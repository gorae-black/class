본격적인 실습에 앞서, 지난 2차시에서 만들었던 Bind Mount 컨테이너를 이 새 환경에 그대로
재현합니다. (개인 VM에서 실습 중이라면 이 컨테이너가 이미 실행 중이니 이 단계는 건너뛰고
바로 다음 단계로 넘어가면 됩니다.)

```
mkdir -p ~/html
echo '<h1>Hello Cloud!</h1>' > ~/html/index.html
docker run -d -p 8080:80 -v ~/html:/usr/share/nginx/html --name webvol nginx
```

세 명령어 모두 특별한 오류 메시지 없이 지나가고, 마지막 `docker run`에서 컨테이너 ID 해시
값이 출력되면 정상입니다. `curl localhost:8080`을 쳐보면 `<h1>Hello Cloud!</h1>`가 나오는지
확인해볼 수 있습니다.
