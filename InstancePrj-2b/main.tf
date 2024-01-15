provider "aws" {
  region = "us-east-1"  #AWS region for us-east-1 Virginia
}

module "ec2_instances" {
  source = "./modules/ec2"

  instances = [
    {
      name  = "Test_Instance1"
      ami   = "ami-0005e0cfe09cc9050"  # Replace with your desired AMI ID
      type  = "t2.micro"               # Replace with your desired instance type
    },
    {
      name  = "Test_Instance2"
      ami   = "ami-0005e0cfe09cc9050"  # Replace with your desired AMI ID
      type  = "t2.micro"               # Replace with your desired instance type
    },
    {
      name  = "Test_Instance3"
      ami   = "ami-0005e0cfe09cc9050"  # Replace with your desired AMI ID
      type  = "t2.micro"               # Replace with your desired instance type
    }
  ]
}
