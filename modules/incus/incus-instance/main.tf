resource "incus_instance" "this" {
  count=var.instance_count
  name="${var.name}-${count.index}"
  image=var.image
  profiles=[
    var.profile
  ]
  dynamic "config" {
    for_each = var.config
    content {
      "limits.cpu" = config.value["limits"].cpu
      "limits.memory" = config.value["limits"].memory
    }
  }
}
