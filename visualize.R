# Charger la bibliothèque nécessaire
library(ggplot2)

# Création d'une visualisation complexe avec le jeu de données mtcars
plot_cars <- ggplot(mtcars, aes(x = hp, y = mpg, color = factor(cyl), size = wt)) +
  # Ajouter des points avec une certaine transparence
  geom_point(alpha = 0.7) +
  # Ajouter une ligne de tendance (régression lissée) pour l'ensemble
  geom_smooth(method = "lm", se = FALSE, color = "black", linetype = "dashed", size = 0.5) +
  # Personnaliser les couleurs et les étiquettes
  scale_color_brewer(palette = "Set1") +
  labs(
    title = "Relation entre Puissance, Consommation et Poids",
    subtitle = "Visualisation non triviale pour le TP Git",
    x = "Puissance (chevaux)",
    y = "Consommation (miles/gallon)",
    color = "Cylindres",
    size = "Poids (1000 lbs)"
  ) +
  # Utiliser un thème propre
  theme_minimal() +
  theme(legend.position = "right")

# Afficher le graphique
print(plot_cars)
