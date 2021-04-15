

data "template_file" "userdata5" {
  template = file("${path.module}/userdata/ipaddress.sh")
}

resource "aws_instance" "instance1" {
  for_each                = { for k in var.sap-db-instancedetailsa1 : index(var.sap-db-instancedetailsa1, k) => k }
  ami                     = each.value.ami_id
  instance_type           = each.value.ec2_instance_size
  key_name                = var.ec2_key_name_d1
  subnet_id               = var.dbs[0]
  #private_ip              =  var.db_ip
  vpc_security_group_ids   =  [aws_security_group.temp_database_sg.id]
  iam_instance_profile    =   var.iam_instance_profile_temp
  disable_api_termination =  true
  ebs_optimized           = true
  root_block_device {
    volume_size           = "150"
    volume_type           = "gp2"
    delete_on_termination = true
    encrypted             = true
    kms_key_id           = var.kms_arn  
  }
  dynamic ebs_block_device {
    for_each = { for vol in each.value.volume : index(each.value.volume, vol) => vol }
    content {
      device_name           = ebs_block_device.value.device_name
      volume_size           = ebs_block_device.value.size
      volume_type           = ebs_block_device.value.type
      delete_on_termination = false
      encrypted             = true
      kms_key_id            = var.kms_arn
    }
  }
  
 user_data     = data.template_file.userdata5.rendered

  tags = "DB"
}
