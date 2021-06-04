
resource "aws_vpc" "Bhanu-main" {
    cidr_block = "10.0.0.0/16"
    instance_tenancy = "default"
    enable_dns_support = "true"
    enable_dns_hostnames = "true"
    enable_classiclink = "false"
    tags = {
        Name = "Bhanu-main"
    }
}


resource "aws_subnet" "Bhanu-public-1" {
    vpc_id = aws_vpc.Bhanu-main.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "ap-southeast-2a"
    tags = {
        Name = "Bhanu-public-1"
    }
}


resource "aws_internet_gateway" "Bhanu-gw" {
    vpc_id = aws_vpc.Bhanu-main.id
    tags = {
        Name = "Bhanu-gw"
    }
} 


resource "aws_route_table" "Bhanu-public-rt" {
    vpc_id = aws_vpc.Bhanu-main.id
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.Bhanu-gw.id
    }
    tags = {
        Name = "Bhanu-public-rt"
    }
}


resource "aws_route_table_association" "Bhanu-public-1-a" {
    subnet_id = aws_subnet.Bhanu-public-1.id
    route_table_id = aws_route_table.Bhanu-public-rt.id
}
