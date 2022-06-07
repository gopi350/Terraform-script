#creating a bucket
resource "google_storage_bucket" "tf_static_storage"{

    name="gopigcp-${random_id.tf_bucket_id.dec}"
    
    location="US"
}