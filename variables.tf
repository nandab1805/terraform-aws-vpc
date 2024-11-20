variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16" #user can override
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "common_tags" {
  type = map
  default = {} #It is optional user should give
}

variable "vpc_tags" {
    type = map
    default = {}  
}

variable "project_name" {
    type = string
}

variable "envinorment" {
    type = string
}   

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "Please give 2 public valid subnet CIDR"
  } 
}

variable "public_subnet_tags" {
  default = {}
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "Please give 2 private valid subnet CIDR"
  } 
}

variable "private_subnet_tags" {
  default = {}
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "Please give 2 private valid subnet CIDR"
  } 
}

variable "database_subnet_tags" {
  default = {}
}

variable "nat_gateway_tags" {
  default = {}
}

variable "public_route_table_tags" {
  default = {}
}

variable "private_route_table_tags" {
  default = {}
}

variable "database_route_table_tags" {
  default = {}
}