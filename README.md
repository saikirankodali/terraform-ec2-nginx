# AWS Infrastructure with Terraform

This repository contains a Terraform configuration file that provisions an AWS infrastructure with a VPC, subnets, internet gateway, route table, security group, and an EC2 instance.

## Prerequisites

* AWS account with credentials set up
* Terraform installed on your machine
* `awscreds.txt` file with AWS access key and secret key in the format `AWS_ACCESS_KEY_ID=YOUR_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY=YOUR_SECRET_ACCESS_KEY`

## Usage

1. Clone this repository to your local machine
2. Create a `awscreds.txt` file with your AWS access key and secret key
3. Run `terraform init` to initialize the Terraform working directory
4. Run `terraform apply` to provision the AWS infrastructure
5. Run `terraform output` to view the public IP address of the EC2 instance

## Infrastructure Components

* VPC with a CIDR block of `10.0.0.0/16`
* Two subnets: one public and one private
* Internet gateway attached to the VPC
* Route table with a route to the internet gateway
* Security group with rules for HTTP, HTTPS, and SSH traffic
* EC2 instance with Apache web server installed

## Variables

* `region`: The AWS region to provision the infrastructure in
* `vpc_cidr`: The CIDR block for the VPC
* `public_subnet_1_cidr`: The CIDR block for the public subnet
* `private_subnet_1_cidr`: The CIDR block for the private subnet
* `availability_zones`: A list of availability zones to use for the subnets

## Outputs

* `instance_public_ip`: The public IP address of the EC2 instance

## Notes

* This configuration file uses the `aws` provider to provision the AWS infrastructure
* The `awscreds.txt` file is used to store the AWS access key and secret key
* The `tls_private_key` resource is used to generate a new SSH key pair
* The `aws_key_pair` resource is used to create a new key pair in AWS
* The `aws_instance` resource is used to create an EC2 instance with Apache web server installed
