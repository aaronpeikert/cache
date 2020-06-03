if(!requireNamespace("pacman"))install.packages("pacman")
pacman::p_load(here, fs)

#----long-running-chunk----
Sys.sleep(10)
dir_create(here("data"))
write.csv(iris, here("data", "iris.csv"))

#----another-chunk----
print("Hello!")
