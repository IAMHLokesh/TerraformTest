variable "instance_name" {
  description = "The common name for all EC2 instances"
}

variable "instances" {
  description = "List of configurations for EC2 instances"
  type        = list(object({
    instance_labels = map(string)
  }))
}

