organization = "berserk-panini"
email        = "admin@edgy-noodle.com"

projects = {
  "admin"      = "Management of the organizations."
  "datacenter" = "Management of the datacenters."
}

variable_sets = {
  "vsphere-hl01" = {
    description    = "Credentials to the hl01 site vSphere API."
    project        = "datacenter"
    project_global = true
    hcl_vars = {
      "allow_unverified_ssl" = "true"
    }
    plain_vars = {
      "vsphere_user"   = "terraform"
      "vsphere_server" = "vcenter.local"
    }
    sensitive_vars = [
      "vsphere_password"
    ]
  },
  "esxi" = {
    description    = "Credentials to ESXi hosts."
    project        = "datacenter"
    project_global = true
    plain_vars = {
      "esxi_username" = "root"
    }
    sensitive_vars = [
      "esxi_password"
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