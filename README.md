# aws-infrastructure
My AWS Lab Infrastructure - terraform
This repo is to create AWS Infrastructure with using terrraform modules.

In this Project we are going to build DevOps project using Terrafom on AWS Cloud

# Infrastructure 
1. Create a VPC 
2. Create IGW
3. Associate IGW with VPC
4. Create Subnets
    1. Public Subnet
    2. Private Subnet
5. Create Route Table for Public Subnet 
6. Provide Route to Route Table for Public Sunet
7. Associate Public Route Table with Public Subnet
8. Create Route Table for Private Subnet for internal communiction.
    Note: no need of internet access for Private Subnet so no RT for Private Subnet
9. Associate Private Route Tale with Private Subnet
10. Create Resources - EC2
11. Create a new Keypair assign to EC2
12. Crete Security Groups and eenable SSH:22
13. Verify access to EC2 from your local PC : login / SSH 


