resource "google_compute_global_forwarding_rule" "default" {
  name       = "global-rule"
  target     = google_compute_target_http_proxy.default.self_link
  port_range = "80"
}

resource "google_compute_target_http_proxy" "default" {
  name        = "target-proxy"
  url_map     = google_compute_url_map.default.self_link
}

resource "google_compute_url_map" "default" {
  name            = "url-map-target-proxy"
  default_service = google_compute_backend_service.default.self_link
}

resource "google_compute_http_health_check" "default" {
  name               = "check"
  request_path       = "/"
}

resource "google_compute_backend_service" "default" {
  name        = "backend"
  port_name   = "http"
  protocol    = "HTTP"
  timeout_sec = 10
  health_checks = [google_compute_http_health_check.default.self_link]
  backend {
    group = google_compute_region_instance_group_manager.us-masters.instance_group
  }
  
}