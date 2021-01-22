variable "service_name" {
  description = "The name of the service"
  type        = string
}

variable "service_description" {
  description = "Description about the service name"
  type        = string
}

variable "branches" {
  description = "List of branches that needs to be created"
  type = list(string)
  default = [
    "develop",
    "production"
  ]
}