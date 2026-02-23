# aws-infrastructure
My AWS Lab Infrastructure - terraform
This repo is to create AWS Infrastructure with using terrraform modules.

In this Project we are going to build DevOps project using Terrafom on AWS Cloud

# Infrastructure 
1. Create a VPC : moduel "networking"
2. Create Subnets
    a. Public Subnet
    b. Private Subnet
3. Create IGW
4. Associate IGW with VPC
5. Create Route Table for Public Subnet 
6. Provide Route to Route Table for Public Sunet
7. Associate Public Route Table with Public Subnet
8. Create Route Table for Private Subnet for internal communiction.
    Note: no need of internet access for Private Subnet so no RT for Private Subnet
9. Associate Private Route Tale with Private Subnet
10. Create Resources - EC2
11. Create a new Keypair assign to EC2
12. Crete Security Groups and eenable SSH:22  - module "security_group"
13. Verify access to EC2 from your local PC : login / SSH 

Below is a clean, reusable Terraform module structure to deploy an EC2 instance in (us-east-2) on Amazon Web Services.

terraform-ec2/
│
├── main.tf                  # Calls the module
├── variables.tf             # Root level inputs
├── terraform.tfvars         # Your actual values
├── outputs.tf
│
└── modules/
    ├── networking/
    │   ├── main.tf
    │   ├── variables.tf
    │   └── outputs.tf
    │
    └── ec2/
        ├── main.tf          # The resource definition
        ├── variables.tf     # Inputs for the module
        └── outputs.tf       # Exported values (e.g., Public IP)
