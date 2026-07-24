`docker images`는 현재 로컬에 저장된(다운로드된) 이미지 목록을 보여줍니다.

이미지는 컨테이너를 만들기 위한 "설계도(붕어빵 틀)"라는 것을 기억하세요.

```
docker images
```

**실행 결과 예시**

```
REPOSITORY    TAG       IMAGE ID       CREATED         SIZE
hello-world   latest    d2c94e258dcb   3 weeks ago     13.3kB
```

SIZE가 13.3kB밖에 안 되는 것에 주목하세요 — 컨테이너 이미지가 왜 가상머신(VM)보다 훨씬 가벼운지
직접 확인한 것입니다.
