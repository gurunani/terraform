resource "aws_instance" "example" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.allow_none.id ]  
  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_security_group" "allow_none" {
  name        = "allow_none"
  description = "Allow traffic"
  
   ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"         # If you select a protocol of -1 (semantically equivalent to all )
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
   }
   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"         # If you select a protocol of -1 (semantically equivalent to all )
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
   }


  tags = {
    Name = "allow_none"
  }
}
