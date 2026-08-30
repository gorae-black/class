컨테이너는 기본적으로 격리되어 있어서 밖에서 내부 상태가 잘 보이지 않습니다. docker inspect는  
   
 그 컨테이너의 IP 주소, 마운트된 볼륨, 환경변수, 현재 상태 같은 정보를 전부 JSON 형태로 보여주는  
   
 명령어입니다.  
그중 IP 주소만 뽑아서 확인해보겠습니다.  
docker inspect web | grep IPAddress  
   
**실행 결과 예시**  
            "SecondaryIPAddresses": null,  
             "IPAddress": "172.17.0.2",  
                     "IPAddress": "172.17.0.2",  
   
IPAddress 값이 이 nginx 컨테이너에 할당된 내부 IP입니다.  
