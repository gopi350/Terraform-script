# creating a random provider
resource "random_id" "tf_bucket_id" {
    byte_length = 8
  
}