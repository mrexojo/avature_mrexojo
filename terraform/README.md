# Infrastructure technical exercise

![Terraform Version](https://img.shields.io/badge/Terraform->=1.2.2-blueviolet?style=flat-square&logo=terraform)
![Terraform Version](https://img.shields.io/badge/LocalStack->=1.0.3-9cf?style=flat-square&logo=portainer)

- Autor: Miguel Ramirez Exojo | [@mrexojo](https://github.com/mrexojo)
- Date: 23/11/2022
- Graphic scheme: [graph.svg](graph.svg)

### Notes

- Additional features: 
  - Internal dns
  - Enable/disable extra disk for second instance
- Next improvements: 
  - Terraform modules in case of scale the services and depending of requirements.
  - final_snapshot attribute for ebs volumes using 4.18 onwards provider version.
  - Pipeline file for Continuous Integration Tool.

## Resources

| CHANGE |                NAME                 |
|--------|-------------------------------------|
|        | `aws_ebs_volume.disk[0]`            |
|        | `aws_instance.EC201`                |
|        | `aws_instance.EC202`                |
|        | `aws_route53_record.EC201`          |
|        | `aws_route53_record.EC202`          |
|        | `aws_route53_zone.main`             |
|        | `aws_security_group.tls`            |
|        | `aws_subnet.nlp`                    |
|        | `aws_volume_attachment.disk_att[0]` |
|        | `aws_vpc.main`                      |


