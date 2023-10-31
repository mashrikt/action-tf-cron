# GitHub Actions with Terraform Cloud to Run Cron Jobs

> Demo project to run cron jobs using GitHub Actions and Terraform Cloud

## Steps
- Create a new repository in GitHub
- Create a new workspace in Terraform Cloud with Version Control Workflow & connect it to the GitHub repository
- Generate `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY` in AWS IAM and add them as environment variables in Terraform 
Cloud workspace. Make these variables as sensitive. Remember to use proper IAM policies to restrict access.
- Also add a secret TF_API_TOKEN in GitHub Actions, which is the Terraform Cloud API token, that you need to generate
from Terraform Cloud.
- Configure backend organization and workspace name in `remote-state.tf` file
- Run `terraform login` in your local machine to authenticate with Terraform Cloud
- Run `terraform init` to initialize the backend
- Run `terraform plan` to see the plan
- Push code to GitHub and see the workflow in action
