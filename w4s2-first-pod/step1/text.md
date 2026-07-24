`kubectl run {이름} --image={이미지}`로 Pod 하나를 즉석에서 실행합니다. Docker에서 배운
`docker run`과 거의 같은 구조입니다.

```
kubectl run mypod --image=nginx
```

**실행 결과 예시**

```
pod/mypod created
```

`created` 메시지가 보이면 K8s에게 "mypod라는 이름으로 nginx 이미지를 쓰는 Pod를 만들어라"는 요청이
정상적으로 접수된 것입니다.
