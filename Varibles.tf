variable "ami" {
 # AMI and Instance type detials are maintainging 
 
  description = "AMI Instance ID"
  default = "ami-08f3d892de259504d"
}

variable "instance_type" {
  description = "Type of instance"
  default = "t2.micro"
}

# will pass key name details also maintain , some of the places doing hardcoding and as writing test purpose few details missing , sorry for this :)
