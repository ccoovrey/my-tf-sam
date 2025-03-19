# my-tf-sam
terraform sam repo

This repo depend on the following secrets:

* ACCESS_KEY - for the AWS Access Key
* SECRET_KEY - for the AWS Secret Key

You can use github actions:

* terraform-localstack - to test out the terraform code using localstack
* terraform-dev - to deploy the infrastructure to AWS (only one type of environment in this repo)

Right now once deployed, you have to manually delete the infrastructure:

* vpc - this repo deploys a vpc named "coov-sam-some_random_string", to delete the VPC
  - delete the NAT gateway associated with this infrastructure
  - delete the vpc
  - go to ec2 and release the elastic-ip associated with the vpc
