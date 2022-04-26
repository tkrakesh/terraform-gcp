terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("C:\\Users\\rakesh.karthikeyan\\Documents\\Terraform\\cred\\zeta-feat-342908-d5781f5a61d9.json")

  project = "zeta-feat-342908"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
  auto_create_subnetworks = false

}
