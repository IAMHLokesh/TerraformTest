resource "aws_instance" "TestServer" {
  for_each = { for instance in var.instances : instance.name => instance }

  ami           = each.value.ami
  instance_type = each.value.type

  tags = {
    Name = each.value.name
  }
}
