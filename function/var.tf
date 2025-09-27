variable "ami_id" {
  type        = string
  default      = "ami-09c813fb71547fc4f"
  description = "ami id "
}

variable "instance_type" {
    default = "t3.micro"
  
}

variable "ec2_tags" {
    type = map(string)
    default = {
        name = "HelloWorld"
    }
  
}

variable "sg_name" {
    default = "allow_none"
}
variable "sg_description" {
    default = "allowing all ports from internet"
}
variable "sg_disc" {
    default = "Allow traffic"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg_tags" {
  default = {
    Name = "allow_none"
  }
}

variable "environment" {
  default = "dev"
}

variable "instances" {
  default = ["redis","mongodb","mysql","rabbitmq"]
}

variable "hosted_zone_id" {
  default = "Z08007301TGLKBZ7OY820"
}
variable "domine_name" {
  default = "gurulabs.xyz"
}

variable "common_tags"{
    default = {
        Project = "roboshop"
        Terraform = "true"
    }
}