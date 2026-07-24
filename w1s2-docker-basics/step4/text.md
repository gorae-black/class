시간이 남았다면 아래 명령어도 실행해보세요. (선택 사항입니다.)

```
docker --version        # 현재 Docker 버전 확인
docker info             # Docker 엔진의 상세 정보(컨테이너/이미지 개수 등) 확인
docker run hello-world  # 다시 한 번 실행해보면 "Pulling" 과정 없이 바로 실행됨
```

마지막 줄을 실행하면 "Pulling" 과정 없이 바로 결과가 나오는 것을 확인할 수 있습니다 — 이미 로컬에
이미지가 있기 때문에 다운로드가 생략된 것입니다.
