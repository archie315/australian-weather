# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data

df = read_csv("data/weatherAUS.csv")

# Create a dot plot of Humidity9am and Temp9am a location

city = "Perth"# the worst city 

scatter_plot = 
df %>%
  filter(Location == city) %>%
  ggplot(aes(x = Temp9am, y = Humidity9am)) + 
  geom_point()

# Save the plot in graphics, 11:33
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)

#14:00 branch test 