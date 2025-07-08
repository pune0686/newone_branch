variable "testresgp" {
  description = "this is a resource group"
  type = list(string)
  default = ["testresgp1", "testresgp2", "testresgp3", "testresgp4", "testresgp5"]
  }

  resource "azurerm_resource_group" "resgp1" {
  count = 5
  name     = var.testresgp[count.index]
location = "West US"
}

resource "azurerm_resource_group" "newone-rg" {
  name     = "new-rgs"
  location = "East US"
}
resource "azurerm_storage_account" "newonestg" {
  name                     = "newstg"   # must be globally unique
  resource_group_name      = azurerm_resource_group.newone-rg.name
  location                 = azurerm_resource_group.newone-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "newcontainer" {
  name                  = "mycontainer"
  storage_account_name  = azurerm_storage_account.newonestg.name
  container_access_type = "private"  # Options: private, blob, container
}

my name is Brijesh Kumar Yadav. I bring over 11 years of experience in the IT industry, with a strong foundation in networking and a specialization in DevOps over the past 4 years. I currently work at Accenture, where I've spent the last 8 years handling various infrastructure and DevOps responsibilities across multiple client projects.

My expertise spans across infrastructure as code using Terraform, source control and CI/CD pipeline management using Git and GitHub, and container orchestration with Docker and Kubernetes. I also have hands-on experience deploying and managing monitoring and alerting systems using tools like Grafana, Prometheus, and Kibana to ensure high availability and performance of production systems.

I’ve worked on end-to-end automation of deployments, optimized cloud infrastructure on Azure and AWS, and collaborated closely with cross-functional teams to ensure smooth integration and delivery. I hold an AWS certification valid until 2026 and previously held an AZ-400 Azure DevOps certification.

I'm passionate about process improvement, automation, and leveraging cloud-native technologies to build scalable and reliable systems.