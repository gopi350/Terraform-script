provider "google"{

    project="tokyo-dynamo-349216"
    region="us-central1"
    credentials = file("jenkinsgcp.json")
}

# we are creating vpc network here (VPC)

resource "google_compute_network" "vpc_network" {
  
  name="terraform-network"
}