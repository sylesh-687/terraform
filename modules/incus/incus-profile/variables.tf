variable "name" {
}

variable "network" {
    
}

variable "devices" {
    type=map(object({
        name = string 
        type = string 
        properties = map(string)
    }))
    default={
        eth1={
            name = "eth1"
            type = "nic"
            properties = {
                nictype = "bridged"
                parent  = "internal"
            }
        }
        root={
            name = "root"
            type = "disk"
            properties = {
              pool = "default"
              path = "/"
            }
        }
    }
}