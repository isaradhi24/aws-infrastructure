variable "vpc_cidr" {}
variable "vpc_name" {}
variable "cidr_public_subnet" {}
variable "us_availability_zone" {}
variable "cidr_private_subnet" {}


#Get AWS Account ID dynamically
data "aws_caller_identity" "current" {}
#Get current aws region
data "aws_region" "current" {}


# Setup VPC
resource "aws_vpc" "devops_proj_1_vpc_us-east-1" {
  cidr_block = var.vpc_cidr 
  tags = {
   Name         = var.vpc_name
   AccountID    = data.aws_caller_identity.current.account_id
   Region       = data.aws_region.current.region
   }
}

#Output the Account ID
output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

#Output the Region Name
output "aws_region_name" {
  value = data.aws_region.current.region
}


/* 
# Setup public subnet
resource "aws_subnet" "devops_proj_1_public_subnets" {
    count = length(var.cidr_public_subnet)
    vpc_id = aws_vpc.devops_proj_1_vpc_us-east-2.id
    cidr_block = element(var.cidr_public_subnet, count.index)
    availability_zone = element(var.us_availability_zone, count.index)

    tags = {
        Name = "dev-proj-public-subnet-${count.index + 1}"
    }
}

# Setup private subnet
resource "aws_subnet" "devops_proj_1_private_subnets" {
    count = length(var.cidr_private_subnet)
    vpc_id = aws_vpc.devops_proj_1_vpc_us-east-2.id
    cidr_block = element(var.cidr_private_subnet, count.index)
    availability_zone = element(var.us_availability_zone, count.index)

    tags = {
        Name = "dev-proj-private-subnet-${count.index + 1}"
    }
}
*/