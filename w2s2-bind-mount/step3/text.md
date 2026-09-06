이제 Bind Mount로 방금 만든 `~/html` 디렉토리를 컨테이너 안의 `/usr/share/nginx/html` 경로에
연결하며 컨테이너를 실행합니다. nginx는 원래 이 경로 안의 파일들을 웹 페이지로 보여주도록
만들어져 있습니다.

`-v {VM 경로}:{컨테이너 경로}` 형식으로 콜론(:) 기준 왼쪽이 VM 쪽, 오른쪽이 컨테이너 쪽
경로입니다.

```
docker run -d -p 8080:80 -v ~/html:/usr/share/nginx/html --name webvol nginx
```

컨테이너의 긴 ID 해시 값이 출력되고 프롬프트가 바로 돌아오면 정상입니다.
