# remove all stopped containers
docker rm $(docker ps --filter "status=exited" -q)
