resource "google_compute_firewall" "terrafrom-firewall"{
    
    name="firewall-terraform"
    network=google_compute_network.vpc_network.id
    allow {
      protocol="tcp"
      ports=["22","80"]
    }
    allow {
      protocol="icmp"
    }
    source_ranges = ["0.0.0.0/0"]
    target_tags = ["web"]
}