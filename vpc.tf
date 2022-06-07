# creating custom vpc(myvpc)
resource "google_compute_network" "vpc_network"{

    name="myvpc"
    auto_create_subnetworks = false

}

//creating the subnet "subnet-1a" in myvpc network

resource "google_compute_subnetwork" "subnetwork-1"{

    name="mysubnet-1a"
    ip_cidr_range = "10.1.2.0/24"
    region = "us-central1"
    network=google_compute_network.vpc_network.id
}

//creating the subnet "subnet-1b" in myvpc network

resource "google_compute_subnetwork" "subnetwork-2"{

    name="mysubnet-1b"
    ip_cidr_range = "10.1.3.0/24"
    region = "us-central1"
    network=google_compute_network.vpc_network.id
}