terraform {
  required_providers {
aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
helm = {
      source = "hashicorp/helm"
      version = "2.10.1"
    }

kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.21.1"
    }
  }
}
provider "aws" {
    region = "ap-southeast-1"
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
provider "kubernetes" {
  config_path    = "~/.kube/config"
}


