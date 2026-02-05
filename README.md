#  🚀Terraform AWS Infrastructure Deployment 

This project deploys a complete AWS infrastructure including VPC, EC2 instance, Security Groups, EKS cluster, and ECR repository using Terraform. The deployment uses modules for reusability and stores state securely in S3 with DynamoDB for locking.
 Terraform AWS Infrastructure – Detailed Documentation

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
 
'''text 
