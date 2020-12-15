# Imperative
## Create deployment
`kubectl create deployment first-app --image=marchino/kub-first-app`
## Expose
`kubectl expose deployment first-app --type=LoadBalancer --port=8080`
## Scale
`kubectl scale deployment/first-app --replicas=3`
## Update deployment
`kubectl set image deployment/first-app kub-first-app=marchino/kub-first-app:2`
## Rollback deployment
`kubectl rollout undo deployment/first-app`
## Delete deployment
`kubectl delete deployment first-app`\
`kubectl delete service first-app`

# Declarative
## Apply
`kubectl apply -f=<file>`
## Delete
`kubectl delete -f=<file>`