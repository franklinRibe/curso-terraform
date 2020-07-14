output "vpc_self_link"{
    value = google_compute_subnetwork.subnet.self_link
}
output "vpc_name"{
    value = google_compute_network.vpc.name
}