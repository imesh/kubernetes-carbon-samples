scp ~/docker-images/imesh-wso2as-5.2.1.tar knode1:
ssh knode1 "docker load < imesh-wso2as-5.2.1.tar"
ssh knode1 "rm imesh-wso2as-5.2.1.tar"
