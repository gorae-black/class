`kubectl expose`로 `myapp` Deployment에 NodePort 타입 Service를 연결합니다. `--type=NodePort`는
클러스터 밖에서도 접속할 수 있게 하라는 뜻이고, `--port=80`은 Service가 받을 포트입니다.

```
kubectl expose deployment myapp --type=NodePort --port=80
```

**실행 결과 예시**

```
service/myapp exposed
```

이제 `myapp`이라는 이름의 Service가 생겼고, 이 Service가 라벨(`app: myapp`)을 통해 뒤에 있는 Pod
2개를 자동으로 찾아 연결합니다.
