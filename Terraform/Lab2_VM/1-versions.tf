#   _______                   __                                           _                                              _     _               
#  |__   __|                 / _|                                         (_)               ___                          (_)   | |              
#     | | ___ _ __ _ __ __ _| |_ ___  _ __ _ __ ___    __   _____ _ __ ___ _  ___  _ __    ( _ )     _ __  _ __ _____   ___  __| | ___ _ __ ___ 
#     | |/ _ \ '__| '__/ _` |  _/ _ \| '__| '_ ` _ \   \ \ / / _ \ '__/ __| |/ _ \| '_ \   / _ \/\  | '_ \| '__/ _ \ \ / / |/ _` |/ _ \ '__/ __|
#     | |  __/ |  | | | (_| | || (_) | |  | | | | | |   \ V /  __/ |  \__ \ | (_) | | | | | (_>  <  | |_) | | | (_) \ V /| | (_| |  __/ |  \__ \
#     |_|\___|_|  |_|  \__,_|_| \___/|_|  |_| |_| |_|    \_/ \___|_|  |___/_|\___/|_| |_|  \___/\/  | .__/|_|  \___/ \_/ |_|\__,_|\___|_|  |___/
#                                                                                                   | |                                         
#                                                                                                   |_|                                         

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.10.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "RG-AKSCluster-PKE"     # mettre ici le nom du resource group de vos ressource
    storage_account_name = "qsdijalufscbqtsapd"  # /!\ mettre le nom du compte de stockage créer dans le lab 1
    container_name       = "tfstate"
    key                  = "vm.terraform.tfstate" 
  }
}

provider "azurerm" {
  # Configuration options
  features {}
}
