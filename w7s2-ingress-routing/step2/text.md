Ingress로 경로를 나눠 연결할 대상이 필요합니다. `/ko` 경로용, `/en` 경로용으로 서로 다른 응답을
돌려주는 간단한 앱을 하나씩 만듭니다. (강의대본은 "서로 다른 컨테이너에 연결"이라고만 설명하므로,
여기서는 `hashicorp/http-echo` 이미지로 각각 다른 텍스트를 응답하는 앱 두 개를 직접 구성합니다.)

```
kubectl create deployment ko-app --image=hashicorp/http-echo -- -text="안녕하세요, 한국어(ko) 서비스입니다"
kubectl expose deployment ko-app --port=80 --target-port=5678

kubectl create deployment en-app --image=hashicorp/http-echo -- -text="Hello, this is the English (en) service"
kubectl expose deployment en-app --port=80 --target-port=5678
```

**실행 결과 예시**

```
deployment.apps/ko-app created
service/ko-app exposed
deployment.apps/en-app created
service/en-app exposed
```

`kubectl get pods`로 `ko-app`, `en-app` Pod가 각각 `Running` 상태인지 확인하고 다음 단계로
넘어가세요.
