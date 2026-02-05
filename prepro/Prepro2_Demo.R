# these temperature are in Kelvin:
temperature <- c("111", "150", "123")


temperature


library("magrittr")

out <- as.numeric(temperature)      # 1. Convert to numeric
out <- subtract(out, 32)            # 2. Subtract 32
out <- multiply_by(out, 5/9)        # 3. Multiply with 5/9
out <- mean(out)                    # 4. Calculate the mean

out <- mean(multiply_by(subtract(as.numeric(temperature), 32), 5/9))

temperature |>                  
  as.numeric() |>               # 1. Convert to numeric
  subtract(32) |>               # 2. Subtract 32
  multiply_by(5/9) |>           # 3. Multiply with 5/9
  mean()                        # 4. Calculate the mean

students <- data.frame(
  Matriculation_No = c(100002, 100003, 200003),
  Student = c("Patrick", "Manuela", "Eva"),
  ZIP = c(8006, 8001, 8820)
)

students

localities <- data.frame(
  ZIP = c(8003, 8006, 8810, 8820),
  LocalityName = c("Zurich", "Zurich", "Horgen", "Wadenswil")
)

localities

# Load library
library("dplyr")

inner_join(students, localities, by = "ZIP")

left_join(students, localities, by = "ZIP")

right_join(students, localities, by = "ZIP")

full_join(students, localities, by = "ZIP")

students <- data.frame(
  Matriculation_No = c(100002, 100003, 200003),
  Student = c("Patrick", "Manuela", "Pascal"),
  Residence = c(8006, 8001, 8006)
)

left_join(students, localities, by = c("Residence" = "ZIP"))
