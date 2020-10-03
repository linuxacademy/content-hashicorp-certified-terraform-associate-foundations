resource "kubernetes_service" "tf-k8s-service" {
  metadata {
    name = "terraform-k8s-service"
    labels = {
      name = "tf-k8s-deploy"
    }
  }
  spec {
    port {
      port        = 80
      target_port = 80
      node_port   = 30080
    }
    type = "NodePort"
  }
}
