data "tfe_project" "this" {
  name = "admin"
}

data "tfe_workspace" "this" {
  name = "terraform"
}

import {
  id = var.organization
  to = tfe_organization.this
}

import {
  id = data.tfe_project.this.id
  to = tfe_project.this["admin"]
}

import {
  id = data.tfe_workspace.this.id
  to = module.workspace["terraform"].tfe_workspace.this
}