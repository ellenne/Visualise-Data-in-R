library(ggplot2)
library(tidyverse)
library(gapminder)
library(socviz)

p <- ggplot(data = gapminder)

jpeg(file = "~/R/Visualise Data in R/figures/chart_01.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))+
  geom_point()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_02.jpeg")
p + geom_point()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_03.jpeg")
p + geom_smooth()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_04.jpeg")
p + geom_point() + geom_smooth()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_05.jpeg")
p + geom_point() + geom_smooth(method = "lm")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_06.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = log10(gdpPercap),
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_07.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_log10()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_08.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_sqrt()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_09.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp)
)
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_reverse()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_10.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::dollar)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_11.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point() +
  geom_smooth(method = "gam") +
  scale_x_log10(labels = scales::comma)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_12.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = continent))

p + geom_point() + geom_smooth() + 
  scale_x_log10(labels = scales::dollar)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_13.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = "purple"))
p + geom_point() +
  geom_smooth(method = 'loess') +
  scale_x_log10()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_14.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp))
p + geom_point(color = "purple") +
  geom_smooth(method = 'loess') +
  scale_x_log10()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_15.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap, y = lifeExp))
p + geom_point(alpha = 0.3) +
  geom_smooth(color = "orange", se = FALSE, size = 8,
              method = "lm")+
  scale_x_log10()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_16.jpeg")
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
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/chart_17.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp,
                          color = continent,
                          fill = continent))
p + geom_point() +
  geom_smooth(method = 'loess') +
  scale_x_log10()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_18.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp))
p + geom_point(mapping = aes(color = continent)) +
  geom_smooth(method = 'loess') +
  scale_x_log10(labels = scales::dollar)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_19.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = gdpPercap,
                          y = lifeExp))
p + geom_point(mapping = aes(color = pop)) +
  scale_x_log10()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_20.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = year,
                          y = gdpPercap))
p + geom_line()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_21.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = year,
                          y = gdpPercap))
p + geom_line(aes(group = country))
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_22.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = year, y = lifeExp))
p + geom_line(aes(group = country))
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_23.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = year,
                          y = gdpPercap))
p + geom_line(aes(group = country)) +
  facet_wrap(~ continent)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_24.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = year, y = gdpPercap))
p + geom_line(color = "gray70", aes(group = country)) +
  geom_smooth(size = 1.1, method = "loess", se = FALSE) +   scale_y_log10(labels = scales::dollar) +
  facet_wrap(~ continent, ncol = 5) +
  labs(x = "Year",
       y = "GDP per capita",
       title = "GDP per capita on Five Continents")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_25.jpeg")
p <- ggplot(data = diamonds, 
            mapping = aes(x = carat, y = price))
p + geom_smooth(alpha = 0.3) +
  facet_grid(cut ~ color)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_26.jpeg")
p <- ggplot(data = diamonds, 
            mapping = aes(x = carat, y = price))
p + geom_smooth(alpha = 0.3) +
  facet_grid(~ cut + color)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_27.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = continent))
p + geom_bar()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_27.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = continent))
p + geom_bar(mapping = aes(y = ..prop..))
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_28a.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = continent))
p + geom_bar(mapping = aes(y = ..prop..))
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_28.jpeg")
p <- ggplot(data = gapminder,
            mapping = aes(x = continent))
p + geom_bar(mapping = aes(y = ..prop.., group = 1))
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_29.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x = religion, color = religion))
p + geom_bar()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_30.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x= religion, fill = religion))
p + geom_bar() + guides(fill = FALSE)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_31.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x = bigregion, fill = religion))
p + geom_bar()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_32.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x = bigregion, fill = religion))
p + geom_bar(position = "fill")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_33.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x = bigregion, fill = religion))
p + geom_bar(position = "dodge")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_34.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x = bigregion, fill = religion))
p + geom_bar(mapping = aes(y = ..prop..),
             position = "dodge")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_35.jpeg")
p <- ggplot(data = gss_sm,
            mapping = aes(x = bigregion, fill = religion))
p + geom_bar(mapping = aes(y = ..prop.., group = religion),
             position = "dodge")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_36.jpeg")
rel_by_region <- gss_sm %>% 
  group_by(bigregion, religion) %>% 
  summarise(N = n()) %>% 
  mutate(freq = N / sum(N),
         pct = round((freq*100),1))
p <- ggplot(rel_by_region, aes(x = bigregion, y = pct, fill = religion))
p + geom_bar(position = "dodge", stat = "identity") +
  labs(x = "Region", y = "Percent", fill = "Religion") +
  theme(legend.position = "top")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_37.jpeg")
p <- ggplot(data = titanic,
            mapping = aes(x = fate, y = percent, fill = sex))
p + geom_col(position = "dodge") +
  theme(legend.position = "top")
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_38.jpeg")
p <- ggplot(data = maunaloa,
            mapping = aes(x = date, y = diff, fill = pos))
p + geom_col() + guides(fill = FALSE)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_39.jpeg")
p <- ggplot(data = midwest,
            mapping = aes(x = area))
p + geom_histogram()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_40.jpeg")
p <-  ggplot(data = midwest,
             mapping = aes(x = area))
p + geom_histogram(bins = 10)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_41.jpeg")
OH.WI <- c("OH", "WI")

p <- ggplot(data = subset(midwest, subset = state %in% OH.WI),
            mapping = aes(x = percollege, fill = state))
p + geom_histogram(alpha = 0.4, bins = 20)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_42.jpeg")
p <- ggplot(data = midwest,
            mapping = aes(x = area))
p + geom_density()
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_43.jpeg")
p <- ggplot(data = midwest,
            mapping = aes(x = area, fill = state, color = state))
p + geom_density(alpha = 0.3)
dev.off()

jpeg(file = "~/R/Visualise Data in R/figures/Chart_44.jpeg")
p <- ggplot(data = subset(midwest, subset = state %in% OH.WI),
            mapping = aes(x = area, fill = state, color = state))
p + geom_density(alpha = 0.3, mapping = (aes(y = ..scaled..)))
dev.off()
#Chart_45.jpeg


#Chart_46.jpeg


#Chart_47.jpeg


#Chart_48.jpeg


#Chart_49.jpeg


#Chart_50.jpeg


#Chart_51.jpeg


#Chart_52.jpeg


#Chart_53.jpeg


#Chart_54.jpeg


#Chart_55.jpeg


#Chart_56.jpeg


#Chart_57.jpeg


#Chart_58.jpeg


#Chart_59.jpeg


#Chart_60.jpeg


#Chart_61.jpeg


#Chart_62.jpeg


#Chart_63.jpeg


#Chart_64.jpeg


#Chart_65.jpeg


#Chart_66.jpeg


#Chart_67.jpeg


#Chart_68.jpeg


#Chart_69.jpeg


#Chart_70.jpeg


#Chart_71.jpeg


#Chart_72.jpeg


#Chart_73.jpeg


#Chart_74.jpeg


#Chart_75.jpeg


#Chart_76.jpeg


#Chart_77.jpeg


#Chart_78.jpeg


#Chart_79.jpeg


