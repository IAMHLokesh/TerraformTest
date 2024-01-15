provider "aws" {
  region = "us-east-1"  #AWS region for us-east-1 Virginia
}

module "ec2_instance" {
  source      = "./modules/ec2"
  instance_name = "Test_Instance"
  instance_ami  = "ami-0005e0cfe09cc9050"  
  instance_type = "t2.micro"
  instance_count = 3 
}