`kubectl get svc myapp`으로 방금 만든 Service의 상세 정보를 확인합니다. NodePort는 30000~32767
범위에서 자동으로 할당되므로, 실행할 때마다 포트 번호가 다르게 나올 수 있습니다.

```
kubectl get svc myapp
```

**실행 결과 예시**

```
NAME    TYPE       CLUSTER-IP     EXTERNAL-IP   PORT(S)        AGE
myapp   NodePort   10.96.123.45   <none>        80:31234/TCP   10s
```

`PORT(S)` 칸의 `80:31234/TCP`에서 뒤에 있는 숫자(`31234`)가 외부에서 접속할 때 쓸 NodePort
번호입니다. 이 번호는 여러분 환경에서 다르게 나올 수 있으니, 실제로 출력된 번호를 다음 단계에서
그대로 사용하세요.
