resource "aws_vpc" "main" {
  cidr_block = var.cidr_block
  tags = merge(
    var.tags,
    { Name = "${var.tags["Project"]}-vpc" }
  )
}

resource "aws_subnet" "public" {
  count = length(var.public_subnets)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnets[count.index]
  availability_zone = var.azs[count.index]
  tags = merge(
    var.tags,
    { Name = "${var.tags["Project"]}-public-${count.index}" }
  )
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnets[count.index]
  availability_zone = var.azs[count.index]
  tags = merge(
    var.tags,
    { Name = "${var.tags["Project"]}-private-${count.index}" }
  )
}
