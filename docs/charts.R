library(ggplot2)
library(tidyverse)
library(gapminder)
library(socviz)

p <- ggplot(data = gapminder)

#chart_01.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point()

#chart_02.png
p + geom_smooth()

#chart_03.png
p + geom_point() + geom_smooth()

#chart_04.png
p + geom_point() + geom_smooth(method = "lm")

#chart_05.png
p <- ggplot(data = gapminder,
            mapping = aes(x = log10(gdpPercap),
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam")

#chart_06.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_sqrt()

#chart_07.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_reverse()

#chart_08.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::dollar)

#chart_09.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::comma)

#chart_10.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = continent))

p + geom_point() + geom_smooth() + 
  scale_x_log10(labels = scales::dollar)

#chart_11.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = "purple"))

#chart_12.png
p + geom_point() +
  geom_smooth(method = 'loess') +
  scale_x_log10()

p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp))
p + geom_point(color = "purple") +
  geom_smooth(method = 'loess') +
  scale_x_log10()

#chart_13.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point(alpha = 0.3) +
  geom_smooth(color = "orange", se = FALSE, size = 8,
              method = "lm")+
  scale_x_log10()

#chart_14.png
p <- ggplot(data = gapminder, 
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point(alpha = 0.3) +
  geom_smooth(method = "gam") + 
  scale_x_log10(labels = scales::dollar) +
  labs(x = "GDP Per Capita",
       y = "Life Expectancy in Years",
       title = "Economic Growth and Life Expectancy",
       subtitle = "Data points are country-years",
       caption = "Source: Gapminder.")

#chart_15.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = continent,
                          fill = continent))
p + geom_point() +
  geom_smooth(method = 'loess') +
  scale_x_log10()

#Chart_16.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp))
p + geom_point(mapping = aes(color = continent)) +
  geom_smooth(method = 'loess') +
  scale_x_log10(labels = scales::dollar)

#Chart_17.png
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp))
p + geom_point(mapping = aes(color = pop)) +
  scale_x_log10()

#Chart_18.png
p <- ggplot(data = gapminder,
            mapping = aes(x = year,
                          y = gdpPercap))
p + geom_line()

#Chart_19.png
p <- ggplot(data = gapminder,
            mapping = aes(x = year,
                          y = gdpPercap))
p + geom_line(aes(group = country))

#Chart_20.png
p <- ggplot(data = gapminder,
            mapping = aes(x = year, y = lifeExp))
p + geom_line(aes(group = country))

#Chart_21.png
p <- ggplot(data = gapminder,
            mapping = aes(x = year,
                          y = gdpPercap))
p + geom_line(aes(group = country)) +
  facet_wrap(~ continent)

#Chart_22.png
p <- ggplot(data = gapminder,
            mapping = aes(x = year, y = gdpPercap))
p + geom_line(color = "gray70", aes(group = country)) +
  geom_smooth(size = 1.1, method = "loess", se = FALSE) +   scale_y_log10(labels = scales::dollar) +
  facet_wrap(~ continent, ncol = 5) +
  labs(x = "Year",
       y = "GDP per capita",
       title = "GDP per capita on Five Continents")

#Chart_23.png
p <- ggplot(data = diamonds, 
            mapping = aes(x = carat, y = price))
p + geom_smooth(alpha = 0.3) +
  facet_grid(cut ~ color)

#Chart_24.png
p <- ggplot(data = diamonds, 
            mapping = aes(x = carat, y = price))
p + geom_smooth(alpha = 0.3) +
  facet_grid(~ cut + color)

#Chart_25.png
p <- ggplot(data = gapminder,
            mapping = aes(x = continent))
p + geom_bar()