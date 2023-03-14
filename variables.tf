variable "v_region" {
    type = string
    description = "Region for deploy the VPC"  
}
variable "v_vpc_default_cidr" {
    type = string
    description = "Test VPC CIDR"  
}

variable "v_environment" {
    type = string
    description = "Environment"  
}

variable "v_owner" {
    type = string
    description = "Owner of the resources"  
}

variable "v_status" {
    type = string
    description = "This resources created from Terraform, Can deleted"
  
}

variable "v_vpc_name" {
    type = string
    description = "VPC name"
  
}