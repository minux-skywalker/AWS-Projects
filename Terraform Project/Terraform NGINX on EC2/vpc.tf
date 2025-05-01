#Create a VPC
#tera-vpc is name of the block
resource "aws_vpc" "tera-vpc" {
      cidr_block = "10.0.0.0/16"
      tags ={
        Name = "vpc_terra"
      } 
}

#private subnet
resource "aws_subnet" "private-subnet" {
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1a"
  vpc_id = aws_vpc.tera-vpc.id
  tags = {
    Name= "private-subnet"
  }
}

#public subnet
resource "aws_subnet" "public-subnet" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.tera-vpc.id
  availability_zone = "ap-south-1a"
  map_public_ip_on_launch = true

  tags = {
    Name= "public-subnet"
  }
}

#Internet Gateway
resource "aws_internet_gateway" "tera-igtw" {
    vpc_id = aws_vpc.tera-vpc.id
    tags = {
      Name = "tera-igwy"
    }
}

#Routing Table
resource "aws_route_table" "tera-rtb" {
  vpc_id = aws_vpc.tera-vpc.id
  route {
    cidr_block= "0.0.0.0/0"
    gateway_id= aws_internet_gateway.tera-igtw.id
  }
   tags = {
      Name = "tera-rtb"
    }
}

resource "aws_route_table_association" "public-sub" {
  route_table_id = aws_route_table.tera-rtb.id
  subnet_id = aws_subnet.public-subnet.id
}
