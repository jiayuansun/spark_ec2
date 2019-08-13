provider "aws" {
  access_key = "XX"
  secret_key = "XXXXX+XXXXX"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami = "ami-2757f631"
  instance_type = "t2.micro"
  #subnet_id = "${aws_subnet.us-east-1a-public.id}"
  subnet_id = "subnet-0a632bd1f48082544"
  associate_public_ip_address = "true"
  key_name="spark_ec2"

}

#resource "aws_vpc" "example" {
#  cidr_block = "10.0.0.0/16"
#  enable_dns_hostnames = true
#  enable_dns_support = true
#}

#resource "aws_subnet" "us-east-1a-public" {
#  vpc_id = "${aws_vpc.example.id}"
#  cidr_block = "10.0.1.0/25"
#  availability_zone = "us-east-1a"
#}
