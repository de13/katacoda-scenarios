Wonderful! Hey let's try to create a K8s deployment.

## TASK

Don't be shy, run the following command:

`kubectl run nginx --image=nginx`{{execute}}

This creates a deployement called nginx withe the latest nginx image on Dockerhub.

To verify if everything goes well, enter:

`kubectl get pods`{{execute}}

That's all folks!