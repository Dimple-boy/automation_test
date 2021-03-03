data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["370807233099/jonnyheywood-*"]
  }

  #owners = ["099720109477"] # commented out but will probably want the ubuntu owner in reality.

  owners = ["370807233099"]
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id 
  instance_type = "t3.small"
  key_name      = "jonathan.heywood"
  security_groups = [aws_security_group.allow_ssh.name]
}