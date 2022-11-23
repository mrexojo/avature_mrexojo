# 🏗️ Infrastructure as Code<br><small>[Avature](https://careers.avature.net/en_US/main/Dashboard#who-we-are) Home Project</small>

![Terraform Version](https://img.shields.io/badge/Terraform->=1.2.2-blueviolet?style=flat-square&logo=terraform)
![Python Version](https://img.shields.io/badge/Python->=3.8.10-informational?style=flat-square&logo=python)
![pip3 Version](https://img.shields.io/badge/pip3->=22.2.1-informational?style=flat-square&logo=python)
![Terraform Version](https://img.shields.io/badge/LocalStack->=1.0.3-9cf?style=flat-square&logo=portainer)

## > [mrexojo exercise](./terraform/README.md)
  
## Prerequisites

The idea is to write Terraform code for AWS, and we'll use a great tool called [LocalStack](https://localstack.cloud/) to test it. LocalStack is a cloud service emulator that runs in a single container on your laptop, so you can test your Terraform code on your local machine without connecting to a remote cloud provider!

To install it, you only need Python 3.8.10 or higher and pip3, and you can simply run:

```bash
pip install localstack
```

Once installed, you can start it by running:

```bash
localstack start
```

## What you'll be doing

You've been tasked with creating **two** [EC2 instances](https://aws.amazon.com/ec2/) using Terraform.

In this repository you'll find a `_providers.tf` file ready to connect to your LocalStack instance running in the default ports (if you modified the default LocalStack configs, please adapt the file to refer to your specific configuration).

There's also a file called `_avature.tf`, which contains the VPC, subnet and security group definition that you will be asked to use in the home project. These three resources will be created when you run `terraform apply` for the first time. Please don't edit this file, only use the resources declared in it.

### The task

A team called "NLP" has asked you to create **two** EC2 instances to try out their new tool. The subnet and security group to be used have already been provided to you. This is what they should look like:

| Instance name     | Instance type | AMI ID                | Subnet | Security groups | Key name    |
| ----------------- | ------------- | --------------------- | ------ | --------------- | ----------- |
| avature-service-1 | T3a medium    | ami-q1w2e3r4t5y6r7l8z | NLP    | allow_tls       | john.doe.qa |
| avature-service-2 | M5 xlarge     | ami-a1v2a3t4u5r6e7rlz | NLP    | allow_tls       | jane.doe.qa |

<img src="https://user-images.githubusercontent.com/38166071/193686964-8f3df9fb-05d2-43d5-89bc-65ac4e36302c.png" height="500px" alt="Blueprint" />

Here are the specific tasks:

1. Each instance should have at least four tags:

- The **resource** tag should be `instance`.
- The **environment** tag should be `dev`.
- The **owner** tag should include the team name, capitalized.
- The **slug** tag should be a string that joins the environment, team and instance name with underscores, all in lowercase (i.e. `qa_devops_awesometool-1`).

2. Each instance should have **two** outputs:

- Instance ID
- Instance private IP

3. **Optional:** The NLP team also mentioned it'd be great to have an encrypted [EBS volume](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volumes.html) for the `avature-service-2` instance. They told you that, if possible, it should be a 200G disk attached to `/dev/xvdf`.

## General suggestions

- Take your time to organize the project as you like.
- Feel free to use any tools to write or debug your code.

## F.A.Q.

### Can I edit any of the provided files?

Besides the `_avature.tf` file, yes, no problem at all. Tweak anything you need.

### Can I add more features?

Sure, go ahead, as long as the team has access to their instances, feel free to add anything you feel would have a positive impact.

### Can I use any Terraform resource? (variable definitions files, locals, data sources, modules, etc)

Yes. We will evaluate the home project comprehensively, not only the working solution but also the conventions you follow in your Terraform codebase, the decisions you make and the reasoning behind them.

### What language should I comment my code in?

English, please.

### Can I add technical documentation or a README?

Anything you feel will expand on your thought process behind the implemented solution will be a great addition.

### Do I have to show my code running during the technical interview?

It's expected that after completing and delivering the home project, it'll be showcased during the technical interview. Please get things ready so you have whatever components you need running on your own computer before the meeting.

### Can I add changes after submitting the project?

Of course! Feel free to add whatever you consider will display your
knowledge and experience.
