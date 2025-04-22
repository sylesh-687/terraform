resource "incus_profile" "this" {
    name=var.name
    dynamic "device" {
        for_each = var.devices
        content{
            name       = device.value.name
            type       = device.value.type
            properties = device.value.properties
        }

    }
}