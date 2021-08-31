# copy object between namespace
kubectl -n namesapcea get secrets/key -o json | jq '.namespace = "default"' | kubectl -n default create -f -

# delete all object in namespace
kubectl -n ${namespace} delete daemonsets,replicasets,services,deployments,pods,rc --all

# check veth for the pod - mainly for dump network packet for pod
# in pod
cat /sys/class/net/eth0/iflink
# it will get a number such as “23”
# in host
ip link | grep ^{number}
# get the veth id


