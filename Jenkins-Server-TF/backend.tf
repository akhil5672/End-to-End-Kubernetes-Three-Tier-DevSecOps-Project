terraform {
  backend "s3" {
    bucket         = "akhil-s3-demo-xyz1"
    region         = "us-west-2"
    key            = "End-to-End-Kubernetes-Three-Tier-DevSecOps-Project/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
