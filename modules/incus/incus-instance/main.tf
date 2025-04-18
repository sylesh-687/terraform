resource "incus_instance" "this" {
  name=var.name
  image=var.image
}
