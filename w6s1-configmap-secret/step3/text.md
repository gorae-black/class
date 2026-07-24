Secret의 값은 Base64로 인코딩되어 저장됩니다. 여기서 꼭 확인해야 할 것이 있습니다 — **Base64는
암호화가 아니라는 점**입니다. 그냥 인코딩 방식이라서 누구나 디코딩할 수 있습니다. 직접 확인해봅시다.

```
kubectl get secret db-secret -o jsonpath='{.data.DB_PASSWORD}'
```

**실행 결과 예시**

```
U3VwZXJTZWNyZXQxMjM=
```

이 값을 그대로 디코딩해보겠습니다.

```
echo U3VwZXJTZWNyZXQxMjM= | base64 -d
```

**실행 결과 예시**

```
SuperSecret123
```

원래 비밀번호(`SuperSecret123`)가 그대로 나오는 것을 확인하세요. 진짜 보안은 '누가 이 Secret에
접근할 수 있는가'를 관리하는 권한 설정으로 확보하는 것이지, Base64 인코딩 자체가 아닙니다.
