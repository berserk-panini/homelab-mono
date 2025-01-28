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
  "vsphere-hl01" = {
    description       = "Manages the hl01 datacenter."
    project           = "datacenter"
    working_directory = "terraform/root/datacenter/vsphere"
    vcs_repo = {
      "berserk-panini/homelab-mono" = {
        github_app_name = "berserk-panini"
      }
    }
  }
}