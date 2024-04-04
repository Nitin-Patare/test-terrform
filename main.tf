provider "google" {
  credentials = file("terraform-key.json")
  project     = "prj-21-417004"
  region      = "us-central1"  # Set your desired region
}
