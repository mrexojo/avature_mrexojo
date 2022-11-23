# EC202 EBS disk
resource "aws_ebs_volume" "disk" {
  count             = local.enable_disk
  availability_zone = aws_instance.EC202.availability_zone
  size              = 200
  tags              = local.EC202-disk.tags
}
# EC202 EBS disk attachment
resource "aws_volume_attachment" "disk_att" {
  count       = local.enable_disk
  device_name = "/dev/xvdf"
  volume_id   = aws_ebs_volume.disk[count.index].id
  instance_id = aws_instance.EC202.id
}
