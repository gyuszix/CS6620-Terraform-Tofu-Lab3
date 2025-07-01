output "pet_names" {
  value = [
    random_pet.pet1.id,
    random_pet.pet2.id,
    random_pet.pet3.id
  ]
}