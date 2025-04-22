variable "name" {
}

variable "config" {
    type=map(string)
    default={
    "ipv4.address" = "10.150.19.1/24"
    "ipv4.nat"     = "true"
    }
}