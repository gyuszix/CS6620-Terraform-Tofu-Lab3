provider "random" {}
provider "local" {}
  
resource "random_pet" "pet1"  {
    prefix = var.pet_prefix
    length = var.pet_name_length
    separator = var.pet_name_seperator
}

resource "random_pet" "pet2"  {
    prefix = var.pet_prefix
    length = var.pet_name_length
    separator = var.pet_name_seperator
}

resource "random_pet" "pet3"  {
    prefix = var.pet_prefix
    length = var.pet_name_length
    separator = var.pet_name_seperator
}

resource "local_file" "my_pets" {
    filename = var.file_name
    content = <<EOT
${random_pet.pet1.id}
${random_pet.pet2.id}
${random_pet.pet3.id}
EOT
}
