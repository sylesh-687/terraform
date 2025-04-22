resource "incus_instance" "this" {
  count=var.instance_count
  name="instance-${count.index}"
  image=var.image
}
