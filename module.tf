provider "aws" {
    region = "us-east-2"
}
module "ec2-instance" {
  source  = "./backend/"
    subnet_id = "subnet-0408ff5790256a757"
    instance_type = "t2.micro"
}
