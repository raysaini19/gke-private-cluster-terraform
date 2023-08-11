# resource "kubernetes_namespace_v1" "k8s_dev" {
#   metadata {
#     name = "dev"
#   }
# }

###https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account.html
resource "kubernetes_service_account" "anthos_admin" {
  metadata {
    name      = "anthos-admin"
    namespace = "kube-system"
  }
  secret {
    name = "${kubernetes_secret.anthos_admin_secret.metadata.0.name}"
  }
}
resource "kubernetes_secret" "anthos_admin_secret" {
  metadata {
    name = "anthos-admin-secret"
  }
}

### https://registry.terraform.io/providers/hashicorp/kubernetes/2.22.0/docs/resources/cluster_role_binding.html
resource "kubernetes_cluster_role_binding" "anthos_admin_binding" {
  metadata {
    name      = "anthos-admin-binding"
  }
  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }
  subject {
    kind      = "ServiceAccount"
    name      = "anthos-admin"
    namespace = "kube-system"
  }
}