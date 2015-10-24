scp ~/docker-images/imesh-wso2esb-4.8.1.tar knode1:
ssh knode1 "docker load < imesh-wso2esb-4.8.1.tar"
ssh knode1 "rm imesh-wso2esb-4.8.1.tar"
