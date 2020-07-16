resource "google_compute_region_instance_group_manager" "us-masters" {
  depends_on = [google_compute_instance_template.instance-template-us]
  name = "us-masters"

  base_instance_name         = "master"
  region                     = "us-central1"
  distribution_policy_zones  = ["us-central1-a"]

  version {
    instance_template = google_compute_instance_template.instance-template-us.self_link
  }

  target_size  = 1
}
resource "google_compute_region_instance_group_manager" "us-workers" {
  depends_on = [google_compute_instance_template.instance-template-us]
  name = "us-workers"

  base_instance_name         = "workers"
  region                     = "us-central1"
  distribution_policy_zones  = ["us-central1-b", "us-central1-c", "us-central1-f"]
  version {
    instance_template = google_compute_instance_template.instance-template-us.self_link
  }

  target_size  = 3
}

