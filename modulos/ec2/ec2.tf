resource "aws_instance" "this" {
  ami             = "ami-084568db4383264d4"
  instance_type   = "t3.micro"
  subnet_id       = "subnet-02ca31a10f2e3a62c"
  security_groups = [aws_security_group.this.id]
  tags = {
    Name = "myinstance"
  }
  root_block_device {
    volume_size = 8
    volume_type = "gp3"
    iops        = 3000
    throughput  = 125
  }
  ebs_block_device {
    device_name = "extraebs"
    volume_size = 16
    volume_type = "gp3"
    iops        = 3000
    throughput  = 125
  }
}
