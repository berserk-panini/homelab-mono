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
    variables = {
      hcl = {
        "allow_unverified_ssl" = "true"
      }
      plain = {
        "vsphere_user"   = "terraform"
        "vsphere_server" = "vcenter.local"
      }
      sensitive = [
        "vsphere_password"
      ]
    }
  },
  "esxi" = {
    description    = "Credentials to ESXi hosts."
    project        = "datacenter"
    project_global = true
    variables = {
      plain = {
        "esxi_username" = "root"
      }
      sensitive = [
        "esxi_password"
      ]
    }
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
  "hl01dc01" = {
    description       = "Manages the hl01dc01 datacenter."
    project           = "datacenter"
    working_directory = "terraform/root/datacenter/vsphere"
    vcs_repo = {
      "berserk-panini/homelab-mono" = {
        github_app_name = "berserk-panini"
      }
    }
    variables = {
      plain = {
        "datacenter" = "hl01dc01"
      }
    }
  }
}