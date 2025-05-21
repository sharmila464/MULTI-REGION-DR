# MULTI-REGION-DR

## 🔧 Architecture Overview

- Primary Region: VPC + S3 + RDS
- Secondary Region: VPC + S3 (replica) + RDS (replica)
- DNS Failover via Route 53
- CI/CD Tool: Jenkins (or AWS CodePipeline)

## 💡 Objective

Create a highly available and fault-tolerant multi-region setup using AWS services and Terraform. CI/CD automates infrastructure provisioning and failover.
