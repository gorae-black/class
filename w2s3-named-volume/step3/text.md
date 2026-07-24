Named Volume은 `docker volume create`로 만드는, Docker가 직접 관리하는 저장 공간입니다.
Bind Mount처럼 VM의 정확한 경로를 직접 지정할 필요가 없습니다.

```
docker volume create mydata
```

**실행 결과 예시**

```
mydata
```

방금 만든 볼륨의 이름이 그대로 출력되면 정상적으로 생성된 것입니다. 이 데이터가 VM 어디에
저장되는지는 Docker가 알아서 관리하므로, 우리는 정확한 경로를 신경 쓸 필요가 없습니다.
