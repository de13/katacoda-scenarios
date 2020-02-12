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

`vi pod.yaml`{{execute}}

Press <kbd>i</kbd> to switch to `insert mode`.

Paste the code, then execute:

<kbd>ESC</kbd>

To escape the `insert mode` and then <kbd>:x</kbd> to save the file.

As we have seen, `apiVersion` is the API version of the resource we want. The Kind is obviously `Pod`. The only metadata we give him is his `name` (but it's mandatory). Finally, comes the description of the container, at least his `name`, and the `image` he will use.

`kubectl apply -f pod.yaml`{{execute}}

We use the `kubectl apply` command with the file we just created.

`kubectl get pods`{{execute}}

Our Pod is deployed!

Whether Docker is the runtime or not does not matter here, all that matters is that it respects the OCI standards.

Because of this, you can find some commands that we have already used with Docker:

### Capture the logs

`kubectl logs simple-pod`{{execute}}

### Enter the pod containers

`kubectl exec -ti simple-pod bash`

Enter <kbd>Ctrl</kbd>+<kbd>x</kbd> to exit, or use the `exit` command:

`exit`{{execute}}