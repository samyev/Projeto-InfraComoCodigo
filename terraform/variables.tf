variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type = string
  default = "AppServerInstance"
}

variable "instance_type" {
  description = "AWS instance type defines the hardware configuration of the machine"
  default     = "t2.micro"
}