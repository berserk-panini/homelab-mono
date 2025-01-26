organization = "berserk-panini"
email        = "admin@edgy-noodle.com"

projects = {
  "admin"      = "Houses resources managing the organization across various platforms."
  "datacenter" = "Houses resources managing the datacenters."
}

workspaces = {
  "terraform" = {
    description       = "Manages this Terraform organization and its resources."
    project           = "admin"
    working_directory = "terraform/root/tf_admin"
    vcs_repo = {
      "berserk-panini/homelab-mono" = {
        github_app_name = "berserk-panini"
      }
    }
  }
}