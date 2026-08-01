Named Volume은 "Docker가 관리한다"고 했는데, 완전히 숨겨진 건 아닙니다. `docker volume inspect`로
실제 저장 위치를 확인해보겠습니다.

```
docker volume inspect mydata
```

**실행 결과 예시**

```
"Mountpoint": "/var/lib/docker/volumes/mydata/_data"
```

`Mountpoint` 항목에 VM 안의 실제 경로가 나옵니다. Docker가 이 경로를 대신 관리해줄 뿐, 데이터가
VM 어딘가에 실제로 저장된다는 점은 Bind Mount와 같습니다.
