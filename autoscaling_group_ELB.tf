# Terraform autoscaling group with agents

resource "aws_autoscaling_group" "agents" {

# Here I have taken availbility zones USA , because now have created for tech test purpose :)
    availability_zones = ["us-east-1a","us-east-1b"]  
    name = "agents"
    // Max size has taken 4 and Min size 2
    max_size = "4"
    min_size = "2"
    /* health check grace period taken 300 
    health_check_grace_period = 300
    health_check_type = "EC2"
    desired_capacity = 2
    force_delete = true
    launch_configuration = aws_launch_configuration.agent-lc.name
    load_balancers= [
      "${aws_elb.web_elb.id}"
    ]
    tag {
        key = "Name"
        value = "Agent Instance"
        propagate_at_launch = true
    }
