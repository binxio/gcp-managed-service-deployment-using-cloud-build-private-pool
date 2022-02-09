variable "project_id" {
  description = "Project of instance resources."
  type        = string
}

variable "region" {
  description = "Region of instances."
  type = string
}

variable "name" {
  description = "Base name of the gateway resources and instances. Used to prefix names like `name`-mig."
  type = string
}

variable "allowed_source_ranges" {
  description = "IP address ranges that are allowed to access this gateway."
  type = list(string)
}

variable "accessible_ranges" {
  description = "IP address ranges that are accesible through this gateway. Key is used as route name."
  type = map(
    object({
      cidr = string
      priority = number
    })
  )
}

variable "vpc_project_id" {
  description = "Project of network resources. Defaults to `var.project_id` if not set."
  type        = string
  default     = ""
}

variable "vpc_network_name" {
  description = "Name of network to host gateway."
  type        = string
}

variable "vpc_subnet_name" {
  description = "Subnet to host gateway, must be in same region as `var.region`."
  type        = string
}