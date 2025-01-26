organization = "berserk-panini"
email        = "admin@edgy-noodle.com"

projects = {
  "admin"      = "Houses resources managing the organization across various platforms."
  "datacenter" = "Houses resources managing the datacenters."
}

workspaces = {
  "terraform" = {
    auto_apply          = true
    description         = "Manages this Terraform organization and its resources."
    project             = "admin"
    working_directory   = "terraform/root/tf_admin"
    vcs_repo = {
      identifier      = "berserk-panini/homelab-mono"
      branch          = "10-root-module-for-managing-the-org"
      github_app_name = "berserk-panini"
    }
  }
}