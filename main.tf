provider "google" {
  credentials = file("terraform-key.json")
  project     = "prj-21-417004"
  region      = "us-central1"  # Set your desired region
}

resource "google_compute_instance" "example" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "us-central1-b"
  allow_stopping_for_update = "true"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2204-lts"
    }

