variable "vpc_cidr_block" {
    type = string
    description = "The CIDR block for the VPC"
    default =  "10.60.0.0/25"
  
}
variable "project" {
    type = string
    default = "MYPROJECT"
  
}