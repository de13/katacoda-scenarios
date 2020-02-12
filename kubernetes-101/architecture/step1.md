Commençons par vérifier que notre environnement est prêt :

`launch.sh`{{execute}}

La commande **kubectl** vous permet d'interagir avec L'API de Kubernetes. Sa  configuration se trouve dans le fichier `~/.kube/config`.

`ls ~/.kube/config`{{execute}}

Il n'est généralement pas recommandé d'éditer manuellement cette configuration (c'est d'ailleurs source d'erreur).

Pour interagir avec votre configuration, préférez utiliser la commande **kubectl config**:

`kubectl config --help`{{execute}}

Pour l'heure, jetons un coup d'oeil à cette configuration:

`kubectl config view`{{execute}}