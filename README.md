# Kubernetes inftrustructure deployed via Modules with Karpenter as the autoscaler

## How does it work?

- This repository will create the networking and EKS infrustructure when applied.
- Once you've terraform applied the resources, you must add update your local kube-configuration by running the following:
`aws eks --region us-east-1 update-kubeconfig --name main-cluster`
- This repository will create a new user called "user1". You can provide this user access-keys to test permissions to the cluster. The user should have admin permissions, the same as the creator of this repository.
- The repository created and autoscaler to scale the number of worker nodes as well as load balancer controller to connect the ingress or load balancing kubernetes services to AWS application and network load balancers respectively.
- Please create an ingress resources to test your applications connectivity. 
- An ingress deployment example can be found under k8s-app/ingresses under k8s-app repository.

## More information

You can find the modules used in this repository in from https://github.com/terraform-aws-modules

An example of manual deployment of Kubernetes EKS can be found here: https://medium.com/@CloudTopG/the-simplest-way-to-create-an-aws-eks-cluster-using-terraform-4ee5ba2e9ddc

For detailed breakdown, please visit: https://antonputra.com/amazon/create-eks-cluster-using-terraform-modules/#create-eks-using-terraform

