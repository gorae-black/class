방금 만든 `mydata` 볼륨을 사용해 새 컨테이너를 실행합니다. Bind Mount와 문법은 비슷하지만,
`-v` 왼쪽에 VM 경로 대신 볼륨 이름을 씁니다.

```
docker run -d -v mydata:/usr/share/nginx/html --name webvol2 nginx
```

컨테이너의 긴 ID 해시 값이 출력되고 프롬프트가 바로 돌아오면 정상입니다. `docker ps`로
`webvol2`가 `Up` 상태로 실행 중인지 확인해보세요. Bind Mount는 내가 VM 경로를 직접 관리하고,
Named Volume은 Docker가 관리한다는 차이를 오늘 두 컨테이너(`webvol`, `webvol2`)로 직접
비교해본 것입니다.
