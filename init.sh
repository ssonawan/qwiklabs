gcloud config set compute/zone us-central1-a

gcloud container clusters create my-clus

expect "NAME"

gcloud container clusters get-credentials my-clus

kubectl create deployment hello-server --image=gcr.io/google-samples/hello-app:1.0

kubectl expose deployment hello-server --type=LoadBalancer --port 8080

kubectl get service

