resource "incus_instance" "this" {
  count=var.instance_count
  name=var.name
  image=var.image
}
