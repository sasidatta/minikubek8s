resource "null_resource" "minikube_cluster" {
  provisioner "local-exec" {
    command = <<EOT
      minikube start --driver=docker --cpus=${var.cpus} --memory=${var.memory} --extra-config=kubelet.networking-pod-cidr=${var.pod_cidr} --extra-config=apiserver.service-cluster-ip-range=${var.service_cidr}
    EOT
  }

  triggers = {
    cluster_name = var.cluster_name
  }
}

