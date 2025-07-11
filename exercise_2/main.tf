locals {
  animal_prefix_map = {
    dog = "woof"
    cat = "meow"
    snake = "hiss"
  }

  some_prefix = local.animal_prefix_map[var.animal]
}

resource "random_pet" "pet" {
  prefix = local.some_prefix
}