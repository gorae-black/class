`free -h`로 이 가상 서버에 할당된 메모리 용량을 확인합니다. (`-h`는 사람이 보기 편한 단위로
보여주는 옵션입니다.)

```
free -h
```

**실행 결과 예시**

```
              total        used        free      shared  buff/cache   available
Mem:           3.8Gi       200Mi       3.2Gi       1.0Mi       400Mi       3.4Gi
Swap:             0B          0B          0B
```

`nproc`과 마찬가지로, 이 메모리 용량도 이 가상 환경에 딱 할당된 만큼만 보입니다.
