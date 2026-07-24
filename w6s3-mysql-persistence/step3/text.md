`kubectl exec`로 Pod에 접속해서 mysql 클라이언트로 테이블을 만들고 데이터를 한 줄 넣습니다.
(`{mysql파드이름}`은 앞 단계에서 확인한 실제 Pod 이름으로 바꿔서 실행하세요.)

```
kubectl exec -it {mysql파드이름} -- mysql -uroot -pSuperSecret123 \
  -e "CREATE DATABASE testdb; USE testdb; CREATE TABLE users (id INT, name VARCHAR(20)); INSERT INTO users VALUES (1, 'kim'); SELECT * FROM users;"
```

**실행 결과 예시**

```
+------+------+
| id   | name |
+------+------+
|    1 | kim  |
+------+------+
```

`kim`이라는 데이터가 조회되면, 테이블 생성과 데이터 삽입이 정상적으로 끝난 것입니다. 이 결과를 잘
기억해두세요 — 잠시 후 Pod를 삭제한 다음에도 이 데이터가 그대로인지 비교할 것입니다.
