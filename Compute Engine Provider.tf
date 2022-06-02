provider "google" {
  credentials = file("terraform.json")
  project = "terraform-349805"
  region  = "asia-south2"
  zone    = "asia-south2-b"
}