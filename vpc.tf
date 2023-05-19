resource "aws_vpc" "r_terraform_vpc" {
  cidr_block = var.v_vpc_default_cidr
  tags = {
    "Name" = var.v_vpc_name
  }
}


resource "null_resource" "hello_local" {
  provisioner "local-exec" {
    command = "echo 'Hello, Local!'"    
  }  
}