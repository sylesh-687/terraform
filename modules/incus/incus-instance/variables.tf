variable "name" {
}
variable "image" {
  default="images:ubuntu/22.04"
}
variable "instance_count"{
  default=1
}
variable "profile"{
}

variable "config" {
    type=map(string)
    default={
    "limits.cpu" = "1"
    "limits.cpu"     = "1"
    }
}

