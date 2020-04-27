variable "rg_name"{
    description = "The resource group to which the AKS needs to be tagged"
}

variable "rg_location"{
    description = "Location of the resources"
}

variable "node_count"{
    description = "Node count of the undelying AKS"
    default = 2
}

variable "vm_size"{
    description = "vm size within the node"
    default = "D8a_v4"
}

variable "sp_clientID"{
    description = "Service principal client ID"
}

variable "sp_clientSecret"{
    description = "Service principal client secret"
}