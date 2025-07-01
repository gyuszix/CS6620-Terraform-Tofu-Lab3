# CS6620 In-Class Lab 3: Terraform/Tofu Basics

This lab contains two Terraform/OpenTofu exercises focused on infrastructure-as-code fundamentals.

## 📁 exercise_1

Generates three random pet names prefixed with `Mrs`, each with three additional parts separated by periods. The names are written to a local file `my_pets.txt`.

### Features
- Uses `random_pet` and `local_file` resources
- Configurable variables: file name, prefix, separator, name length
- Output saved to `my_pets.txt`

## 📁 exercise_2

Generates a random pet name with a dynamic prefix based on user input (`dog`, `cat`, or `snake`). The prefix is selected using a local map.

### Features
- Uses `random_pet`
- Accepts CLI variable `animal`
- Dynamic prefix (`ruff`, `meow`, `hiss`) based on input

---

Run both exercises using OpenTofu:  
```bash
tofu init
tofu plan
tofu apply
