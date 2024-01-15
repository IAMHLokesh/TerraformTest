variable "instances" {
  description = "List of configurations for EC2 instances"
  type        = list(object({
    name = string
    ami  = string
    type = string
  }))
}
