# copy object between namespace
kubectl -n namesapcea get secrets/key -o json | jq '.namespace = "default"' | kubectl -n default create -f -
