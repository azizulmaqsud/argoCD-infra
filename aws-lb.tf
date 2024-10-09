resource "helm_release" "alb_controller" {
  name       = "aws-load-balancer-controller"
  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"
  version    = "1.5.5"
  namespace  = "kube-system"

  set {
    name  = "clusterName"
    value = "oct-24-eks-argo"
  }

}
