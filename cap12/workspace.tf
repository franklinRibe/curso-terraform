resource "google_compute_instance" "this" {
    count  = terraform.workspace == "dev" ? 5 : 2
    name               = format("%s-%s-%d", terraform.workspace, var.name, count.index)
    machine_type       = var.machine_type
    zone               = var.zone

    boot_disk{
        initialize_params{
            image = var.image
        }
    }

    network_interface{
        network   = "default"
    }

    labels = {
        environment = terraform.workspace
        cap         = 12
    }
}