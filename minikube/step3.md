Soooo cute! Let's create a service!

## TASK

Enter the folloing command in the prompt:

`kubectl expose deployment nginx --port 80`{{execute}}

So simple! Verify your service:

`kubectl get svc nginx`{{execute}}

You can ensure that you have at least on pod as endpoint to your service withe the following command:

`kubectl get ep nginx`

Congratz!