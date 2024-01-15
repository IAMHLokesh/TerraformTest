provider "aws" {
  region = "us-east-1"  
}

module "ec2_instances" {
  source      = "./modules/ec2"
  instance_name = "Dev-instance"
  instances = [
    {
      instance_labels = {
        Environment = "Dev"
        Application = "App1"
      }
    },
    {
      instance_labels = {
        Environment = "Dev"
        Application = "App2"
      }
    }
  ]
}