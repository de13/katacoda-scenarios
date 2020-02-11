Avec cette configuration en place, nous pouvons vérifier l'état de santé de notre cluster.

Identifions d'abord les composants *master*:

`kubectl get componentstatus`{{execute}}

Le fait que nous ayons une réponse montre que l'API est fonctionnelle. Que nous a retourné cette commande ? L'état des composant master :
- scheduler
- controller-manager
- etcd

Nous pouvons constater ici qu'ils sont tous *healthy* et fonctionnels.

Le control plane est donc opérationel. Passons au data plane :

`kubectl get nodes`{{execute}}

Nos *workers nodes* sont *ready*.

A ce stade si nous voulons en savoir un peu plus sur les nodes, leur capacité, ce qu'ils contiennent, il suffit d'exécuter la commande :

`kubectl get nodes -o yaml`{{execute}}