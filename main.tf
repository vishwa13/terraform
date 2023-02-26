provider "aws"{
    region= "ap-south-1"
    access_key="AKIAZZMXQKZ7GFJGZHOT"
    secret_key="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"
}


resource "aws_vpc" "development-vpc"{
    cidr_block="10.0.0.0/16"
}

resource "aws_subnet" "development-sub-1"{
    vpc_id=aws_vpc.development-vpc.id
    cidr_block="10.0.10.0/24"
    availability_zone="ap-south-1a"
}