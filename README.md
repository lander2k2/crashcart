# Crashcart

Wheel it into your cluster with you.  It has your tools on it.

## General Debug, Inspection

To run crashcart pod in default namespace of K8s cluster:

```
$ kubectl create -f https://raw.githubusercontent.com/lander2k2/crashcart/master/crashcard-po.yaml
$ kubectl exec -it crashcart bash
```

To run container on a docker host:

```
$ docker run -d --name crashcart quay.io/lander2k2/crashcart sleep 86400
$ docker exec -it crashcart bash
```

## Network Speed Test

Fire up an iperf server:

```
$ kubectl create -f https://raw.githubusercontent.com/lander2k2/crashcart/master/network_test/crashcart-iperf-server.yaml
```

Deploy a couple of clients:

```
$ kubectl create -f https://raw.githubusercontent.com/lander2k2/crashcart/master/network_test/crashcart-iperf-client.yaml
```

Check the results:

```
$ kubectl logs crashcart-iperf-server
```

