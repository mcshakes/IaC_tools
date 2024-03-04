- since using the profile within VSCode, no need for provider

```
provider "aws" {
    region = "us-east-1"
}
```

`terraform init`

`terraform state list` gets you the different resources

`terraform state show ${resource_name}` resource_name from up above

`terraform state show aws_instance.dev_node` shows the EC2

`ssh -i ~/.ssh/${keyname} ubuntu@54.144.66.194`

## NOTES:

- Not fun because I have to manually add in the installs on the EC2 instance.
- Need to automate what is happening in .tpl file above.

- Read about config files. Because that command `terraform apply -replace aws_instance.dev_node` to create the hostname file allowed me to basically open up the remote server in a whole new VS Code window.