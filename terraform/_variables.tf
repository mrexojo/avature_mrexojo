variable "aws_region" {
  type        = string
  description = "AWS region."
  default     = "us-east-1"
}

variable "team" {
  type        = string
  description = "Name of the team that owns the service."
  default     = ""
}

variable "security_groups" {
  type        = list(string)
  description = "List of security group IDs."
  default     = [""]
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet the resource will be created in."
  default     = ""
}

# Environment var
variable "environment" {
  description = "Environment name"
  default     = ""
}

# EC201 variables
variable "EC201" {
  type = map(string)
  default = {
    instance_name = ""
    instance_type = ""
    team          = ""
    ami_id        = ""
    key_name      = ""
    user_data     = ""
  }
}

# EC202 variables
variable "EC202" {
  type = map(string)
  default = {
    instance_name = ""
    instance_type = ""
    team          = ""
    ami_id        = ""
    key_name      = ""
    user_data     = ""
    disk_size     = ""
  }
}
