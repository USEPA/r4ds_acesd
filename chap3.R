# Load up needed packages
library(nycflights13)
library(dplyr)

# Examples showing select and without pipes
flights_sel <- select(flights, year, month, day, arr_delay, carrier)
flights_sel2 <- mutate(flights_sel, date = paste(year, month, day, "-"))

# Nested function
flights_sel <- mutate(select(flights, year, month, day, arr_delay, carrier), 
                      date = paste(year, month, day, "-"))

# Piped Version
flights_sel <- flights |>
  select(year, month, day, arr_delay, carrier) |>
  mutate(date = paste(year, month, day, sep = "-"))

# Back to the book

flights |>
  filter(dest == "IAH") |> 
  group_by(year, month, day) |> 
  summarize(
    arr_delay = mean(arr_delay, na.rm = TRUE)
  ) |>
  ungroup() 

# More with Filter
flights |> 
  filter(dep_delay > 120)
# > < >= <= == !=
# !(this == that & this > those)
# & |

# January or February
flights |> 
  filter(month == 1 | month == 2)

flights |> 
  filter(month %in% c(1, 2, 9)) |>
  View()


