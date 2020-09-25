resource "aws_launch_configuration" "agent-lc" {
    name_prefix = "agent-lc-"
    # Here passing AMI and Image details but due to time limitation and test purpose some information missing
    image_id = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    security_groups = ["${aws_security_group.websg.id}"]
    # user data file normally providing .sh file but here I haven't written .sh file :)
    user_data = file("terra.sh")
    
    lifecycle {
        create_before_destroy = true
    }

    root_block_device {
        volume_type = "gp2"
        volume_size = "8"
    }
}
