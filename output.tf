/* output "my_vpc" {
  value = google_compute_network.main-vpc.id
}
output "my_subnet" {
  value = google_compute_subnetwork.subnet-1.id
}
output "gcp_nat_gateway" {
  value = google_compute_router_nat.main-nat.id
} */
output "network_name" {
  value = google_compute_network.main-vpc.name
}

output "subnetwork_name" {
  value = google_compute_subnetwork.subnet-1.name
}

