variable "AWS_REGION" {
  default = "ap-southeast-2"
}

variable "PATH_TO_PRIVATE_KEY" {
 default = "bhanu-key"
}

variable "PATH_TO_PUBLIC_KEY" {
 default = "bhanu-key.pub"
}

variable "AMIS" {
 type = map(string)
 default = {
 ap-southeast-2 = "ami-0f39d06d145e9bb63"
 }
}
