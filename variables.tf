variable "cluster_name" {
  description = "The name of the Minikube cluster"
  type        = string
  default     = "minikube"
}

variable "cpus" {
  description = "Number of CPUs for Minikube"
  type        = number
  default     = 2
}

variable "memory" {
  description = "Memory (in MB) for Minikube"
  type        = number
  default     = 2048
}

variable "pod_cidr" {
  description = "CIDR range for Kubernetes pods"
  type        = string
  default     = "10.244.0.0/16"
}

variable "service_cidr" {
  description = "CIDR range for Kubernetes services"
  type        = string
  default     = "10.96.0.0/12"
}
