output "network_name" {
  value = google_compute_network.main-vpc.name
}

output "subnetwork_name" {
  value = google_compute_subnetwork.subnet-1.name
}

