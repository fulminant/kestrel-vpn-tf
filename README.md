# Kestrel VPN Deployment

Welcome to the Kestrel VPN Terraform Infrastructure Repository!
This repository contains the necessary code and configurations
to manage your infrastructure as code using Terraform.
With Terraform, you can provision and manage your cloud
resources in a consistent and automated manner.

## Getting started

Follow these steps to set up and start using Terraform with this repository:

### Prerequisites

- **Terraform**: Make sure you have Terraform installed on your local machine. You can download it from the [Terraform website](https://www.terraform.io/downloads.html) or use a package manager like `brew` (on macOS) or `chocolatey` (on Windows).


### Clone the Repository

```bash
https://github.com/fulminant/kestrel-vpn-tf.git
cd kestrel-vpn-tf
```

### Configuration
1. Create a `terraform.tfvars` file to store your variable values. You can use the provided `terraform.tfvars.example` as a template.
2. Modify the variable values in `terraform.tfvars` to match your environment and requirements.


### Initialize Terraform
Run the following command to initialize Terraform in the project directory:

```bash
terraform init
```

### Deploy Infrastructure
Review the Terraform configurations in the repository and ensure
they match your requirements. Then, deploy the infrastructure
by running:
```bash
terraform apply
```

### Clean Up
When you're done experimenting with the infrastructure,
you can destroy it using:
```bash
terraform destroy
```

### Connect to EC2 Instance
```bash
terraform output -raw server_private_key > ec2-key.pem
chmod 400 ec2-key.pem
ssh -i ec2-key.pem ubuntu@$(terraform output -raw server_public_ip) 
```

## Documentation
Refer to the [Terraform Documentation](https://developer.hashicorp.com/terraform/docs)
for detailed information on using Terraform, writing configurations,
and managing different providers.


## Recommendations
Please use and configure editorconfig plugin for your IDE. 

## IDE Plugin
For a smoother Terraform development experience, consider installing a Terraform plugin for your preferred integrated development environment (IDE). Here are some popular options:

* **VS Code**: Install the [HashiCorp Terraform Extension](https://marketplace.visualstudio.com/items?itemName=HashiCorp.terraform) for Visual Studio Code to get syntax highlighting, autocompletion, and more.

* **IntelliJ IDEA**: Use the [HashiCorp Terraform plugin](https://plugins.jetbrains.com/plugin/7808-terraform-and-hcl) to enhance your Terraform development workflow.

* **Atom**: Get the [language-terraform](https://github.blog/2022-06-08-sunsetting-atom/) package for syntax highlighting and snippets in Atom.

These plugins can significantly improve your productivity when working with Terraform code.

## License
This repository is licensed under the [MIT License](https://chat.openai.com/LICENSE).
