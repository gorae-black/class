1주차 마지막에 "지금은 컨테이너를 지우면 데이터도 같이 사라진다"는 문제를 예고해드렸었죠. 오늘
배운 볼륨으로 이 문제가 실제로 해결되는지 확인해보겠습니다.

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

컨테이너(`webvol2`)는 사라졌지만 볼륨(`mydata`) 안의 데이터는 그대로 남아있습니다. 컨테이너의
생명주기와 데이터의 생명주기가 분리된다는 것 — 이게 오늘 배운 Named Volume의 핵심입니다.
