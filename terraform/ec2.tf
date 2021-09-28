resource "null_resource" "packer"{
   provisioner "local-exec" {
     command = "cd ../packer; packer build ."
   }
}

data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["django-app-*"]
  }
  # utilizando minha porópria ami criada pelo packer
  owners = ["self"]
}

resource "aws_instance" "app_server" {
  ami                    = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_http.id, aws_security_group.allow_ssh.id]
  key_name               = "key-iac"

  depends_on = [null_resource.packer]

  tags = {
    Name = var.instance_name
  }
}