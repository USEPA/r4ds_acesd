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

# Arrange

flights |> 
  arrange(year, month, day, dep_time) |>
  View()

flights |> 
  arrange(desc(dep_delay))

# Distinct
flights |> 
  distinct() |>
  nrow()

flights |>
  nrow()

flights |> 
  distinct(origin, dest)

flights |>
  select(origin, dest) |>
  unique()

flights |> 
  distinct(origin, dest, .keep_all = TRUE)

flights |>
  count(origin, dest, sort = TRUE)

flights |>
  count(origin, dest) |>
  arrange(desc(n))

# Mutate
flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60
  ) |> View()

flights |> 
  mutate(
    gain = dep_delay - arr_delay,
    speed = distance / air_time * 60,
    .before = 1
  )

# Select
flights |> 
  select(year, month, day)

flights |> 
  select(year:day)

flights |> 
  select(where(is.character))

flights |>
  select(airline = carrier, tailnum, dest, origin)

flights |> 
  relocate(time_hour, air_time, .before = day)

flights |> 
  relocate(starts_with("arr"), .before = dep_time)

flights |>
  select(day, day, day)

variables <- c("year", "month", "day", "dep_delay", "arr_delay")
flights |>
  select(any_of(variables))

mean(rnorm(100))
