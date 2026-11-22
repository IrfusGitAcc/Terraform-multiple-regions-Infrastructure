



# Find Amazon Linux AMI in Ohio
data "aws_ami" "ohio_ami" {
  provider    = aws.ohio
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

# Find Amazon Linux AMI in Virginia
data "aws_ami" "virginia_ami" {
  provider    = aws.virginia
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

# Create EC2 in Ohio
resource "aws_instance" "ohio_instance" {
  provider      = aws.ohio
  ami           = data.aws_ami.ohio_ami.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name_ohio
  }
}

# Create EC2 in Northern Virginia
resource "aws_instance" "virginia_instance" {
  provider      = aws.virginia
  ami           = data.aws_ami.virginia_ami.id
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name_virginia
  }
}

