# AWS
Create an EC 2 instance
use Nomachine or any other remote server tool and type the following command
### ssh ubuntu@Public_ipv4_of_the_VM
for Identity file
### ssh -i /Location_of_Identity_Key_abc.pem ubuntu@Public_ipv4_of_the_VM
for permissions do chmod 600

# AWS Cli
 ### cli commands -> aws version , which aws

Go to aws console ->Security Credentials->Access Key-> Create Access Key and secret Access Key.(Keep It SAfe)

### Command -> aws configure 
enter data , keep defaults to json and us region 1.

### Command -> aws s3 ls 
To view s3 instances
### Command -> aws s3 mb {BucketName Other Parameters}
to create a s3 instance

# AWS Cloud Formation Template
https://github.com/awslabs/aws-cloudformation-templates
on Console -> can be done using ui
