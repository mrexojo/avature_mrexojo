# Tags builder
locals {
  owner1     = lower(var.team)
  sluglist1  = [var.environment, local.owner1, var.EC201["instance_name"]]
  slugbuild1 = join("_", local.sluglist1)
  owner2     = lower(var.team)
  sluglist2  = [var.environment, local.owner2, var.EC202["instance_name"]]
  slugbuild2 = join("_", local.sluglist2)

  EC201 = {
    tags = {
      name        = var.EC201["instance_name"]
      resource    = "instance"
      environment = var.environment
      owner       = var.EC201["team"]
      slug        = local.slugbuild1
    }
  }
  EC202 = {
    tags = {
      name        = var.EC202["instance_name"]
      resource    = "instance"
      environment = var.environment
      owner       = var.EC202["team"]
      slug        = local.slugbuild2
    }
  }
  enable_disk = var.EC202["disk_size"] != "" ? 1 : 0
  EC202-disk = {
    tags = {
      attached_on = var.EC202["instance_name"]
      resource    = "block_disk"
      size        = var.EC202["disk_size"]
      environment = var.environment
      owner       = var.EC202["team"]
      slug        = local.slugbuild2

    }
  }
}
