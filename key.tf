resource "aws_key_pair" "Bhanu-mykeypair" {
 key_name = "Bhanu-mykeypair9"
 public_key = file(var.PATH_TO_PUBLIC_KEY)
}
