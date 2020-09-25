# Terraform

## Terraform90oe Technical Assignment

###Terraform code for EC2 deploy an EC2 instance, running within ASG with ELB


##Autoscaling based on condition of CPU Utilization

Pre-Requisites:

-   Install Terraform(v0.12)
-   Install Git

# Clone the code from github

     https://github.com/deepikaaws7/Terraform.git
     cd terraform-cpumetricsautoscaling

# Initialise the Terraform:

   - terraform init
   
   
# Plan:

  - terraform plan
  
# Apply
  
  - terraform apply
  
 # Checking the ELB comes to InService or not
 
  ![ELB](https://user-images.githubusercontent.com/71882019/94287299-04209e80-ff4e-11ea-9300-d9802124732a.png)
 
    
   AWS load balancer details added 
   

 # Verifying the URL is working or not
 
 ![Load_balancer_verify](https://user-images.githubusercontent.com/71882019/94288010-dab44280-ff4e-11ea-8adc-cb6c519cbd06.png)
 


Goto Autoscaling group verifying autoscaling conditions attached or not 

After that increasing CPU Utilization using below command

   - for i in 1 2 3 4; do while : ; do : ; done & done
   
Verifying the CPU utilization

Check CPU Utilization using TOP command

  top
  
  
  Its scaleup instances as per condition again reducing the CPU Utilization using below command
  
  for i in 1 2 3 4; do kill %$i; done
  
  It's scaledown instances as per condition 
  
  
# CleanUp:

  terraform destroy
  
