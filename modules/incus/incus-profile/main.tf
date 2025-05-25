resource "incus_profile" "this" {
    name=var.name
    dynamic "device" {
        for_each = var.devices
        content{
            name       = device.value.name
            type       = device.value.type
            properties ={
                for key,val in device.value.properties:
                key => key == "parent" ? var.network : val
            }
        }

    }
}