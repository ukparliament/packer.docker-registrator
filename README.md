Packer template for an EC2 AMI to be used by all web nodes
=============

Install [Packer](https://www.packer.io/) and add it to your PATH.

Create your Docker Web AMI in AWS, using your access and secret keys.

```
packer build \
  -var 'aws_access_key=your_key' \
  -var 'aws_secret_key=your_secret' \
  template.json
```

Or

```
packer build -var-file='packer_vars.json' template.json
```

Extra variables exposed:

* aws_region (defaults to `eu-west-1`)
* aws_instance_type (defaults to `t2.micro`)
* ami_name_prefix (defaults to `docker-web`)

###Troubleshooting

* Make sure you have set the AWS region and the correct source AMI (Ubuntu 14.x recommended) for that region
* This example uses ubuntu