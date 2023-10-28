terraform {
  backend "remote" {
    organization = "mashrikt"

    workspaces {
      name = "action-tf-cron"
    }
  }
}
