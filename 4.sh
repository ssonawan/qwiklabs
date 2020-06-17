gcloud config set compute/zone us-central1-a

gcloud container clusters create nginx-tutorial --num-nodes 2

curl https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get > install-helm.sh
chmod u+x install-helm.sh
./install-helm.sh --version v2.16.3

helm init

kubectl create serviceaccount --namespace kube-system tiller

kubectl create clusterrolebinding tiller-cluster-rule --clusterrole=cluster-admin --serviceaccount=kube-system:tiller

kubectl patch deploy --namespace kube-system tiller-deploy -p '{"spec":{"template":{"spec":{"serviceAccount":"tiller"}}}}'

helm init --service-account tiller --upgrade

kubectl get deployments -n kube-system

kubectl create deployment hello-app --image=gcr.io/google-samples/hello-app:1.0

kubectl expose deployment hello-app  --port=8080

helm install --name nginx-ingress stable/nginx-ingress --set rbac.create=true

kubectl get service nginx-ingress-controller

kubectl apply -f ingress-resource.yaml

kubectl get ingress ingress-resource



