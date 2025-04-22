resource "incus_profile" "this" {
    name=var.name
    dynamic "device" {
        for.each= var.devices
        content{
            name       = device.value.name
            type       = device.value.type
            properties = device.value.properties
        }

    }
}