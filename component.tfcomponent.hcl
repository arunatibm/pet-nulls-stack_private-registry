variable "prefix" {
  type = string
}

variable "instances" {
  type = number
}

stack "pet-nulls-stack" {
    source = "app.staging.terraform.io/arun/pet-nulls-stack"
    version = "1.0.0"

    inputs = {
        instances = var.instances
        prefix = var.prefix
    }
}