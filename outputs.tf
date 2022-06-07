

#Fetching the ip of the instance that we have created

output "ip" {

  value=google_compute_instance.terraform-instance.network_interface.0.access_config.0.nat_ip
}

# fetching bucket name
output "storage_name"{

    value=google_storage_bucket.tf_static_storage.url
}