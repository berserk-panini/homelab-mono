# 🌍🛠️ terraform

This directory contains Terraform modules and compositions for managing the homelab infrastructure.  
While the modules can be used independently, the root compositions are split by project and designed to integrate with HCP Terraform cloud platform.

## 🔄🤖 CICD

Changes should be made on dedicated branches and merged via pull request upon reviewing the speculative plan.  
Each module and composition should have a `README.md` file with a brief description and TF Docs block delimiters (see [.terraform-docs.yml](./.terraform-docs.yml)).  
Once merged, documentation will be generated via automated workflow and a plan triggered in all workspaces watching for the changed files.  

## 📚🚀 Getting Started on HCP Terraform

1. Set up HCP Terraform organization (see [guide](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-sign-up#create-an-account)).
2. Set up GitHub App with access to the GitHub organization (see [guide](https://developer.hashicorp.com/terraform/enterprise/application-administration/github-app-integration)).
3. Create an `admin` project and inside, a `terraform` workspace (see [config](./root/admin/terraform/terraform.tfvars)).
4. Create a user API token for the `terraform` workspace and set it as a sensitive `token` variable (see [guide](https://developer.hashicorp.com/terraform/cloud-docs/users-teams-organizations/users#tokens)).
5. Trigger the plan in the `terraform` workspace and apply the changes.

> See dedicated README files in each root module for specific setup instructions.
