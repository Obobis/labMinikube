# labMinikube
### Создаем несколько манифестов для подов(в репе это nginx, busybox и redis)
Пример yaml-манифеста:
```yaml
# подик для кубика 

apiVersion: v1
kind: Pod
metadata:
  name: nginx-pod
  labels:
    name: nginx
spec:
  containers:
  - name: nginx-container
    image: nginx:alpine
    resources:
      limits:
        memory: "128Mi"
        cpu: "500m"
      requests:
        memory: "64Mi"
        cpu: "250m"
    ports:
      - containerPort: 80

```
Далее запускаем кластер minikube
```bash
  minikube start
```
