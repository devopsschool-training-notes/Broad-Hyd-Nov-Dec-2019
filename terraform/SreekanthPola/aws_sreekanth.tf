resource "aws_key_pair" "deployer" {
  key_name   = "pola-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQClxB/yWAXNGn41djJdfu4jxF4RY7lWyDWj8Tg9erdi+xj+56nUWYnHaDy5hVU+MfSMulxpxn0g29L7cFg+djAAfidq/6TKD3ud88WeI3I1EG0UhvaLkNdaryJ+DzVrgAcHBue5CEoOX1JxM7/7ezgZ3+urQTjQ2wxEI3hFcA5f6Gl1ShAuKc4fimYP+5J2nVCV5+Jl9u3K9nv9/3btwcLlTSCKqFVfHvKJiPJiFHdACeGb2fBAFGChpz++6VimQmtS6s9pSJmgD5XAFszBeb03e3mSUrMEqAd6DXbCwjlZrTOi1LJfjN+wdZ7iLbpiMdWUCJEvlHDWbozPiKHlgd0p root@ip-172-31-19-40.ap-south-1.compute.internal"
}

resource "aws_security_group" "pola_sg" {
  name        = "pola_sg"
  description = "Allow TLS inbound traffic"


  ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  tags = {
    Name = "allow_all"
  }
}

resource "aws_instance" "web" {
  ami           = "ami-5b673c34"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.deployer.id}"
  security_groups = ["${aws_security_group.pola_sg.name}"]
 provisioner "file" {
    source      = "/home/ec2-user/deploy.sh"
    destination = "/tmp/deploy.sh"
  }

provisioner "local-exec" {
    command = "touch /tmp/devops.txt"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo -s",
      "/tmp/deploy.sh",
    ]
  }

  connection {
    type     = "ssh"
    user     = "ec2-user"
    password = ""
    private_key = "${file("pola")}"
  }
  
  tags = {
    Name = "SreekanthPola"
  }
}
