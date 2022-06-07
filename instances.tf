# creating a vm instance (ubuntu-18)
resource "google_compute_instance""terraform-instance"{

    name="debian-9"
    zone="us-central1-a"
    machine_type = "e2-medium"
    //creating netwirk tag as [web]
    tags=["web"]

    //creating ubuntu flavoured os
    boot_disk {
      initialize_params {
          image="debian-cloud/debian-9"
      }
    }

    network_interface {
      subnetwork = google_compute_subnetwork.subnetwork-1.id
      access_config {
        nat_ip=google_compute_address.static.address
      }
    }


  metadata_startup_script = "script.sh"



}

resource "google_compute_address" "static"{

    name = "ipv4-address"
}


