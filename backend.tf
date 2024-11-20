terraform {
  backend "gcs" {
    bucket  = "terraformgcpow23"
    prefix  = "student.01-network-state"
  }
}
