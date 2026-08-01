`webvol2`를 삭제한 뒤, 볼륨(`mydata`) 데이터가 남아있는지 확인해보겠습니다.

```
docker stop webvol2
docker rm webvol2
docker ps -a
docker volume ls
```

**실행 결과 예시**

```
docker ps -a 결과에는 webvol2가 더 이상 보이지 않지만,
docker volume ls 결과에는 mydata가 여전히 남아있습니다.
```

컨테이너는 사라졌지만 볼륨 데이터는 남아있으면 정상입니다.
