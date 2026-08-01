`docker volume inspect`로 볼륨의 실제 저장 위치를 확인합니다.

```
docker volume inspect mydata
```

**실행 결과 예시**

```
"Mountpoint": "/var/lib/docker/volumes/mydata/_data"
```

`Mountpoint` 항목에 VM 안의 실제 경로가 나오면 정상입니다.
