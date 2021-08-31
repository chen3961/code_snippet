# remove all stopped containers
docker rm $(docker ps --filter "status=exited" -q)

# remove all untagged images
docker rmi $(docker image -f "dangling=true" -q)
