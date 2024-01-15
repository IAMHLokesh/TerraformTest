resource "aws_instance" "example" {
 
  for_each = { for idx, instance in var.instances : idx => instance }

  ami           = "ami-0005e0cfe09cc9050"  
  instance_type = "t2.micro"              

  tags = merge({
    Name = "${var.instance_name}"
  }, each.value.instance_labels)
}


