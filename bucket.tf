resource "aws_s3_bucket" "first_bucket" {
  bucket = "felipeminello-remote-state"

  versioning {
    enabled = true
  }
}