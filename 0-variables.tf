variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "cluster-name"
  type = string
  default = "main-cluster"
}

variable "kubernetes_version" {
  description = "The kubernetes version to be installed"
  type = string
  default = "1.29"
}

variable "aws_load_balancer_controller_helm_chart_version" {
  description = "Chart version for the aws load balancer controller Helm chart"
  type = string
  default = "1.4.4"
}