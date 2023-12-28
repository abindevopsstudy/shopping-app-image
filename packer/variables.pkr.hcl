variable "project_name" {
  type        = string
  description = "Name of the project"
}

variable "project_env" {
  type        = string
  description = "Environment of the project"
}

variable "ami_id" {
  type        = string
  description = "ami id if the instance"
}

locals {
  image-timestamp = "${formatdate("DD-MM-YYYY-hh-mm",timestamp())}"
  image-name = "${var.project_name}-${var.project_env}-${local.image-timestamp}"
}
