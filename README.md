## Docker
To change docker repos: 
```
 sudo bash -c 'cat > /etc/docker/daemon.json <<EOF
{
  "insecure-registries" : ["https://docker.arvancloud.ir"],
  "registry-mirrors": ["https://docker.arvancloud.ir"]
}
EOF'
```
- To run containers with having them survive reboots:
```
docker run -d \
  --name rabbitmq \
  -p 5672:5672 -p 15672:15672 \
  --restart unless-stopped \
  rabbitmq:management
```
```
docker run -d \
  --name mongodb \
  -p 27017:27017 \
  --restart unless-stopped \
  mongo
```
```
docker run -d \
  --name postgres \
  -p 5432:5432 \
  -e POSTGRES_USER=myuser \
  -e POSTGRES_PASSWORD=mypassword \
  --restart unless-stopped \
  postgres
```
```
docker run -d \
  --name redis \
  -p 6379:6379 \
  --restart unless-stopped \
  redis
```
