#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#
#*                 Root Module                         *#
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#

# Service Principal Variables

variable "client_id" {
    description =   "Client ID (APP ID) of the application"
    type        =   string
}

variable "client_secret" {
    description =   "Client Secret (Password) of the application"
    type        =   string
}

variable "subscription_id" {
    description =   "Subscription ID"
    type        =   string
}

variable "tenant_id" {
    description =   "Tenant ID"
    type        =   string
}


#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# Windows Server VM - Variables
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*


# Prefix and Tags

variable "prefix" {
    description =   "Prefix to append to all resource names"
    type        =   string
    default     =   "windowsserver"
}

variable "tags" {
    description =   "Resouce tags"
    type        =   map(string)
    default     =   {
        "author"        =   "Hemant"
        "deployed_with" =   "Terraform"
    }
}

# Resource Group

variable "location" {
    description =   "Location of the resource group"
    type        =   string
    default     =   "South India"
}

# Vnet and Subnet

variable "vnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
    default     =   "10.0.0.0/16"
}

variable "subnets" {
    description =   "subnets attributes"
    type        =   map(string)
    default     =   {
    "server-subnet"    =   "10.0.1.0/24"
    "member-subnet"    =   "10.0.2.0/24"
    }
}

# Public IP and NIC Allocation Method

variable "allocation_method" {
    description =   "Allocation method for Public IP Address and NIC Private ip address"
    type        =   list(string)
    default     =   ["Static", "Dynamic"]
}


# VM 

variable "virtual_machine_size" {
    description =   "Size of the VM"
    type        =   string
    default     =   "Standard_DS1"
}

variable "computer_name" {
    description =   "Computer name"
    type        =   string
    default     =   "Win10vm"
}

variable "admin_username" {
    description =   "Username to login to the VM"
    type        =   string
    default     =   "winserveradmin"
}

variable "admin_password" {
    description =   "Password to login to the VM"
    type        =   string
    default     =   "P@$$w0rD2020*"
}

variable "os_disk_caching" {
    default     =       "ReadWrite"
}

variable "os_disk_storage_account_type" {
    default     =       "StandardSSD_LRS"
}

variable "os_disk_size_gb" {
    default     =       128
}

variable "publisher" {
    default         =       "MicrosoftWindowsServer"
}

variable "offer" {
    default         =       "WindowsServer"
}

variable "sku" {
    default         =       "2019-Datacenter"
}

variable "vm_image_version" {
    default         =       "latest"
}

#variable "blobs" {
#    description     =       "Files to upload to the container"
#    type            =       map(string)
#    default         =       {
#        "adds.ps1"            =   "./azure/WindowsServer2019/ADDS.ps1"
#        "domainjoin.ps1"      =   "./azure/WindowsServer2019/domainjoin.ps1"
#    }
#}
