Sur votre poste de travail, vous avez **kubectl**, la commande qui vous permet d'interagir avec L'API Kubernetes, configuré (la configuration se trouve dans `~/.kube/config`).

`cat ~/.kube/config`{{execute}}

Il n'est généralement jamais nécessaire d'éditer manuellement cette configuration (c'est d'ailleurs un grosse source d'erreur).

Pour interagir avec votre configuration, préférez utiliser `kubectl config`:

`kubectl config --help`{{execute}}

Pour l'heure, jetons un coup d'oeil à cette configuration:

`kubectl config view`{{execute}}