resource "incus_instance" "this" {
  count=var.instance_count
  name="${var.name}-${count.index}"
  image=var.image
  profiles=[
    var.profile
  ]
}
