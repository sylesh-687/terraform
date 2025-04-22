resource "incus_instance" "this" {
<<<<<<< HEAD
  count=var.instance_count
  name="instance-${count.index}"
=======
  name=var.name
>>>>>>> main
  image=var.image
}
