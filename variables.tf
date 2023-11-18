variable instance_type {
  type        = string
  default     = ""
  description = "instance type"
}

variable instance_name {
  type        = string
  default     = ""
  description = "instance name"
}
# common
variable environment {
  type        = string
  default     = ""
  description = "environment"
}

variable team {
  type        = string
  default     = ""
  description = "team"
}


# ----- VPC VARS ----
variable vpc_cidr {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr"
}

variable azs {
  type        = list
  default     = ["us-east-1a", "us-east-1b"]
  description = "availability zones"
}

variable private_subnets {
  type        = list
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
  description = "private subnet cidrs"
}

variable public_subnets {
  type        = list
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
  description = "public subnet cidrs"
}

variable database_subnets {
  type        = list
  default     = ["10.0.103.0/24", "10.0.104.0/24"]
  description = "public subnet cidrs"
}
