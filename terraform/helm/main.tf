resource "helm_release" "argocd" {
  name       = "argocd"
  namespace = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "10.1.2"
  create_namespace = true
  recreate_pods = true

  values = [
    "${file("${path.module}/argocd-values.yml")}"
  ]
}