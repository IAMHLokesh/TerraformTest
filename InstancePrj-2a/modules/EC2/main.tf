resource "aws_instance" "TestServer" {
  count         = var.instance_count
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = {
    Name = "${var.instance_name}-${count.index + 1}"
  }
}
