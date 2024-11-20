resource "google_compute_network" "main-vpc" {
  name                    = "amit-01-vpc"              # Name of the VPC
  auto_create_subnetworks = false                      # Set to false for custom subnets
  description             = "Main VPC for Amit"        # Optional description

  # Optional tags for reference
}
resource "google_compute_subnetwork" "subnet-1" {
  name          = "amit-subnet-1"                      # Name of the subnet
  ip_cidr_range = "10.0.0.0/24"                        # Subnet CIDR range
  region        = "asia-south1"                        # Region for the subnet
  network       = google_compute_network.main-vpc.id   # Reference to the VPC
  description   = "Subnet 1 for Amit"

  # Enable private Google access (optional, like mapping private IPs)
  private_ip_google_access = true
}
resource "google_compute_router" "main-router" {
  name    = "amit-router"
  region  = "asia-south1"
  network = google_compute_network.main-vpc.id
}

resource "google_compute_router_nat" "main-nat" {
  name   = "amit-nat"
  region = "asia-south1"
  router = google_compute_router.main-router.name

  nat_ip_allocate_option = "AUTO_ONLY"  # Option to automatically allocate a NAT IP
  source_subnetwork_ip_ranges_to_nat = "ALL_SUBNETWORKS_ALL_IP_RANGES"
}

