variable "subnet_id" {
    description = "subnet id of instance"
}

variable "instance_type" {
    description = "type of instance"
}

variable "ec2-config" {
    type = map(string)
    default = {
      "dev" = "ami-06971c49acd687c30"
      "stage"= "ami-0d1b5a8c13042c939"
    } 
}
resource "aws_instance" "sample" {
    subnet_id = var.subnet_id
    ami=lookup(var.ec2-config, terraform.workspace,"ami-06971c49acd687c30")
    instance_type = var.instance_type
}
