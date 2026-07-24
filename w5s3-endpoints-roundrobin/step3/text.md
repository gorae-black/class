먼저 `kubectl get svc myapp`으로 NodePort 번호를 다시 확인하세요.

```
kubectl get svc myapp
```

확인한 NodePort 번호를 아래 `{NodePort 번호}` 자리에 넣고, curl을 10번 반복해서 요청을 보냅니다.

```
for i in $(seq 1 10); do curl localhost:{NodePort 번호}; done
```

**실행 결과 예시**

```
<!DOCTYPE html>
<html>
...
<h1>Welcome to nginx!</h1>
...
</html>
<!DOCTYPE html>
<html>
...
</html>
(10번 반복 출력)
```

오늘 쓰는 nginx 기본 페이지는 어느 Pod가 응답하든 내용이 똑같아서, 이 curl 결과만 봐서는 어느
Pod가 응답했는지 구분이 잘 안 됩니다. 다음 단계에서 `kubectl logs`로 실제로 어느 Pod가 요청을
처리했는지 확인해보겠습니다.
