resource "incus_instance" "this" {
  count=var.instance_count
  name="${var.name}-${count.index}"
  image=var.image
  profiles=[
    var.profile
  ]
  config={
    "limits.cpu" = var.config["limits"].cpu
    "limits.memory" = var.config["limits"].memory
  }
}
