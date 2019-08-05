# copy object between namespace
kubectl -n namesapcea get secrets/key -o json | jq '.namespace = "default"' | kubectl -n default create -f -

# delete all object in namespace
kubectl -n ${namespace} delete daemonsets,replicasets,services,deployments,pods,rc --all
