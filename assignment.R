# загружаем нужные пакеты
library(languageR)
library(ggplot2)

# загружаем датасет
meta <- oldFrenchMeta

# допишите ваш код ниже
# постройте в ggplot столбиковую диаграмму (_bar), 
# показывающую распределение произведений по темам; цветом-заливкой закодируйте жанр; 
g <- meta |> 
  ggplot(aes(x = Topic, fill = Genre)) +
  geom_bar() +
  # уберите названия осей; добавьте заголовок "Old French Data"
  labs(title = 'Old French Data', x = NULL, y = NULL) +
  # поверните координатную ось; 
  coord_flip() +
  # поменяйте тему оформления на черно-белую (bw) 
  scale_fill_manual(values = c(
    "poetry" = "#cc79a7",
    "prose"  = "#009e73"
  )) +
  theme_bw()

# !!!! сохраните график как объект в окружении под именем g
# !!!!вызов class(g) должен возвращать "gg"     "ggplot"
class(g)
