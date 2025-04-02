variable "application_name" {
  type = string
}

variable "application_port" {
    type = number 
}

variable "cidr_blocks" {
    type = list(string)  
}

variable "vpc_id" {
    type = string
  
}