Although the Pod is the atomic unit of Kubernetes, its deployment unit is deployment. It is therefore not possible to create an inline Pod, but it is possible to do it from a yaml file:

Let's create a `pod.yaml` file with this content:

```
apiVersion: v1
kind: Pod
metadata:
  name: simple-pod
spec:
  containers:
  - name: simple-container
    image: nginx
```{{copy}}

`nano pod.yaml`{{execute}}

Paste the code, then execute:
<kbd>Ctrl</kbd>+<kbd>x</kbd>
<kbd>Y</kbd>
<kbd>Enter</kbd>