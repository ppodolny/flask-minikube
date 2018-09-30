# Flask Example for Docker and Kubernetes (Minikube)

## Skeleton for container-based Flask app for local development

### Docker

```bash
docker build . -t flask-kubernetes-example

docker run -d -p 5000:5000 flask-kubernetes-example

curl -L http://localhost:5000

```

### Minikube:

```bash
eval $(minikube docker-env)

docker build . -t flask-kubernetes-example:latest

kubectl run flask-kubernetes-example --image=flask-kubernetes-example:latest --port=5000 --image-pull-policy=Never

kubectl get deployments

curl $(minikube service flask-kubernetes-example --url)
```
