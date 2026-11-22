



variable "ohio_region" {
  description = "AWS Ohio region"
  type        = string
  default     = "us-east-2"
}

variable "virginia_region" {
  description = "AWS Northern Virginia region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "instance_name_ohio" {
  description = "Ohio EC2 instance name"
  type        = string
  default     = "hello-ohio"
}

variable "instance_name_virginia" {
  description = "Virginia EC2 instance name"
  type        = string
  default     = "hello-virginia"
}

