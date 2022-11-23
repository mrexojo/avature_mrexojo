team        = "NLP"
environment = "dev"
EC201 = {
  instance_name = "avature-service-1"
  instance_type = "T3a medium"
  team          = "NLP"
  ami_id        = "ami-q1w2e3r4t5y6r7l8z"
  key_name      = "john.doe.qa"
  user_data     = "./user_data/ec201.sh"
}
EC202 = {
  instance_name = "avature-service-2"
  instance_type = "M5 xlarge"
  team          = "NLP"
  ami_id        = "ami-a1v2a3t4u5r6e7rlz"
  key_name      = "jane.doe.qa"
  user_data     = "./user_data/ec202.sh"
  disk_size     = "200"
}
    