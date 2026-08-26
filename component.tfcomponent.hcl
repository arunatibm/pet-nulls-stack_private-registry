variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}


required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.5.1"
  }

  null = {
    source  = "hashicorp/null"
    version = "~> 3.2.2"
  }
}

stack "pet-nulls-stack" {
    source = "app.staging.terraform.io/arun/pet-nulls-stack"
    version = "1.0.0"

    inputs = {
        instances = var.instances
        prefix = var.prefix
    }
}