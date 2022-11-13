terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
}

provider "aws" {
  region = var.region
}


variable "region" {}
variable "bucket_name" {}
variable "instance_type" {}
variable "application_name" {}
variable "environment" {}
variable "dynamo_table_name" {}
variable "security_group_name" {}