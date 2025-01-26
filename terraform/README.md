# 🌍🛠️ terraform

This directory contains Terraform modules and compositions for managing the homelab infrastructure.  
While the modules can be used independently, the root compositions are split by project and designed to integrate with HCP Terraform cloud platform.

> See dedicated README files in each root module for specific setup instructions.

## 🔄🤖 CICD

Changes should be made on dedicated branches and merged via pull request upon reviewing the speculative plan.  
Each module and composition should have a `README.md` file with a brief description and TF Docs block delimiters (see [.terraform-docs.yml](./.terraform-docs.yml)).  
Once merged, documentation will be generated via automated workflow and a plan triggered in all workspaces watching for the changed files.  
