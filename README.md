#  🚀Terraform AWS Infrastructure Deployment 

This project deploys a complete AWS infrastructure including VPC, EC2 instance, Security Groups, EKS cluster, and ECR repository using Terraform. The deployment uses modules for reusability and stores state securely in S3 with DynamoDB for locking.
 Terraform AWS Infrastructure – Detailed Documentation

📐 **Architecture Diagram:** 

Here is the main architecture of the project:
![Architecture Diagram](https://drive.google.com/uc?export=view&id=1HKmOLXlfygEcMnTrHGCBOmLEUaT1gc0H)

# 📌 Table of Contents

 1. 🧰 Prerequisites

2. 🗂️ Project Structure

3. 🧩 Modules Overview

    - 🌐 VPC

    - 🖥️ EC2

    - 🔐 Security Group

    - ☸️ EKS

    - 📦 ECR

4- ⚙️ Variables

5- 💾 Terraform Backend

6- ▶️ How to Run

7- 🧪 Example Deployment Flow


# 🧰 Prerequisites

  Before running this project, make sure you have:

1- Terraform v1.5+

2- AWS CLI configured (aws configure)

3- AWS account with IAM permissions

4- Existing:

   - 🪣 S3 bucket (for state)

  - 🔒 DynamoDB table (for state locking)

5- EC2 Key Pair (for SSH access)

# 🗂️ Project Structure
 
 
```text
.
├── main.tf              # Calls all modules
├── variables.tf         # Variable definitions
├── terraform.tf         # Backend configuration
├── terraform.tfvars     # Actual variable values
└── modules/
    ├── vpc/
    ├── ec2/
    ├── security_group/
    ├── eks/
    └── ecr/
```
# 🧩 Modules Overview
1- **🌐 VPC Module**

 📍 Path: modules/vpc
   Creates:
   - VPC
   - Public subnet
   - Private subnets
   - Internet Gateway
   - NAT Gateway
  Inputs:

    Variable                 	Description
    cidr_vpc	                VPC CIDR block
    cidr_private	            List of private subnet CIDRs
    public_subnet_cidr      	Public subnet CIDR
    name_private	            Names of private subnets
    name_public	             Name of public subnet
    vpc_name	                VPC name
    igw	                     Internet Gateway name

 Outputs:

   1- vpc_id
   2- private_subnet_id
   3- public_subnet_id

