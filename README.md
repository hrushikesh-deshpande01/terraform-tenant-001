# 3 tier Architecture

This are general code snippets where user can easily use and extend existing functionality.
User can easily make use of terraform workspaces and replicate .tfvars file for higher environment like TEST,UAT,PREPROD and PROD.
This  repository  refers to reusable modules  under https://github.com/hrushikesh-deshpande01/terrafrom-modules-001.


## Running Application

#### Download and install terraform
https://developer.hashicorp.com/terraform/downloads?product_intent=terraform


#### download terrafrom tenant repository.

git clone https://github.com/hrushikesh-deshpande01/terraform-tenant-001.git

Azure Services includes 
1) Resource Group
2) virtual Network
3) Keyvault
4) App service (Frontend)
4) App service (Backend)
5) Azure MSSQL server

## Common update before running.
In each service you need to update below
1) subscription_id
2) tenant_id
3) client_id
4) client_secret  ( Not recomended to put here you can make use of "export TF_VAR_client_secret=xxxx-xxxx-xxxx-xxxx" in your CD pipeline. )

### Multi Env Support
In each azure service there is a file "dev-terraform.tfvars" which can be replicated for multi-environment support for example  "test-terraform.tfvars"/ "uat-terraform.tfvars"/ "preprod-terraform.tfvars" / "prod-terraform.tfvars".

### Manage State files.
One can manage state files with help of workspaces.
command to manage workspace :
```
terraform workspace new / show / delete / list /show <workspace_name>
```

### Remote backend storage

user can also add remote backend.

```
backend "azurerm" {
      resource_group_name  = "tfstate"
      storage_account_name = "<storage_account_name>"
      container_name       = "tfstate"
      key                  = "terraform.tfstate"
  }
```


## Code Validate 

```
cd  resource_group
terraform  init --var-file=dev-terrafrom.tfvars
terrafrom  validate
```

## code plan and apply

```
terraform plan --var-file=dev-terrafrom.tfvars --input=false --out=planfile.tfplan

terraform apply --auto-approve --input=false planfile.tfplan
```
