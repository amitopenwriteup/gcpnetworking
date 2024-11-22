# sg.tf - Creating a firewall rule in GCP to allow SSH and unlimited egress
resource "google_compute_firewall" "allow_ssh_and_egress" {
  name    = "allow-ssh-and-egress"
  network = "default"  # Replace with your VPC name if necessary

  # Ingress rule to allow SSH (port 22) access
  allow {
    protocol = "tcp"
    ports    = ["22"]
  }

  # Egress rule to allow all outbound traffic (unlimited)
  allow {
    protocol = "all"
  }

  # Define source ranges for incoming traffic (allow all IPs for SSH)
  source_ranges = ["0.0.0.0/0"]  # Allow access from any source

  # Optional: Set target tags for applying the firewall rule to specific instances
  target_tags = ["ssh-access"]

  description = "Allow SSH access on port 22 and unlimited egress access"
}

