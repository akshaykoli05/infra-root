terraform {
  cloud {
    organization = "akshayInfra"

    workspaces {
      name = "Dev"
    }
  }
}

