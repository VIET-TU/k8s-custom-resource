kubectl apply -f website-crd.yaml
kubectl create serviceaccount website-controller
kubectl create clusterrolebinding website-controller --clusterrole=cluster-admin --serviceaccount=default:website-controller
kubectl apply -f website-controller.yaml
kubectl apply -f website.yaml