resource "aws_instance" "One" {

  ami           = "ami-5b673c34"

  instance_type = "t2.micro"

  key_name = "rajesh-mumbai"

 tags = {

    Name = "IWS_306321_EC2"

  }



  provisioner "file" {

  source      = "index.html"

  destination = "/tmp/index.html"



  connection {

    type     = "ssh"

    user     = "ec2-user"

    private_key = "rajesh-mumbai.pem"

    host = "${self.public_ip}"

  }

}

}



resource "aws_security_group" "IWS_SG_Pradyumna_Terraform" {
  name        = "IWS_306321_SECG"
  description = "Allow TLS inbound traffic"
  

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 0
    to_port     = 80
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }

ingress {
    # TLS (change to whatever ports you need)
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
    
  }
tags = {
    Name = "IWS_306321_SGroup"
  }

}