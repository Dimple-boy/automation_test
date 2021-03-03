data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["jonnyheywood-*"]
  }

  #owners = ["099720109477"] # commented out but will probably want the ubuntu owner in reality.

  owners = ["self"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id 
  instance_type = "t3.small"
  key_name      = "jonathan.heywood"
  security_groups = [aws_security_group.allow_ssh.name]
}