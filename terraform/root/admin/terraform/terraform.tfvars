organization = "berserk-panini"
email        = "admin@edgy-noodle.com"

projects = {
  "admin"      = "Management of the organizations."
  "datacenter" = "Management of the datacenters."
}

variable_sets = {
  "vsphere-hl01" = {
    description = "Credentials to the hl01 site vSphere API."
    project     = "datacenter"
    hcl_vars = {
      "allow_unverified_ssl" = "true"
    }
    plain_vars = {
      "user" = "terraform"
    }
    sensitive_vars = [
      "password"
    ]
  }
}

workspaces = {
  "terraform" = {
    description       = "Manages this Terraform organization and its resources."
    project           = "admin"
    working_directory = "terraform/root/admin/terraform"
    vcs_repo = {
      "berserk-panini/homelab-mono" = {
        github_app_name = "berserk-panini"
      }
    }
  }
}