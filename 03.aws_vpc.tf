# provider "aws" {
#   region  = "ap-northeast-2"
# }

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "terraform_vpc"
  }
}


# for_each 이용한 복수 생성
# variable "vpc_value"{
#   default = {
#     vpc1 = "10.10.0.0/16"
#     vpc2 = "10.11.0.0/16"
#     vpc3 = "10.12.0.0/16"
#     vpc4 = "10.13.0.0/16"
#   }
# }

# resource "aws_vpc" "main" {
#   for_each = var.vpc_value

#   cidr_block       = each.value

#   tags = {
#     Name = each.key
#   }
# }