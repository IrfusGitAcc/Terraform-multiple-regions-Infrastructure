

# Ohio region
provider "aws" {
  alias  = "ohio"
  region = var.ohio_region
}

#virgenia region
provider "aws" {
  alias  = "virginia"
  region = var.virginia_region
}
