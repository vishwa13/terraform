provider "aws"{
    region= "ap-south-1"

}


resource "aws_vpc" "development-vpc"{
    cidr_block="10.0.0.0/16"
    tags={
        Name:"Development-vpc"
        vpc_env:"dev"
    }
}

resource "aws_subnet" "development-sub-1"{
    vpc_id=aws_vpc.development-vpc.id
    cidr_block="10.0.10.0/24"
    availability_zone="ap-south-1a"
    tags={
        Name:"Dev-subnet-1"
       
    }
}