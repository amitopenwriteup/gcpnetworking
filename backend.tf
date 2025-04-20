terraform {
  backend "gcs" {
    credentials = "provide the location of json file"
    bucket  = "provide your bucket name from system directory"
    prefix  = "student.01-network-state"
  }
}
