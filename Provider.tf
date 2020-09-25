/* here region have taken Europe but load balancer has maintained US regions , for Tech test purpose have created new aws account but missed to change region details , sorru for this  :) */

provider "aws" {
  shared_credentials_file = "/root/.aws/credentials"
  
  region = "us-east-1"
  
  // region = "eu-west-2"
} 
