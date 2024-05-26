output "kubeconfig" {
  value = <<EOT
  export KUBECONFIG=$(minikube kubeconfig)
EOT
}
