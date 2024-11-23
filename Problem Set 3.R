## Problem set 3
## 12/11/24
## Hancheng Luo

#Bundesliga-Vektor
bundesliga <- c(
  "FC Bayern" = 55L,
  "BVB" = 51L,
  "RB Leipzig" = 50L,
  "Borussia MGB" = 49L,
  "Bayer 04" = 47L,
  "FC Schalke 04" = 37L,
  "VfL Wolfsburg" = 36L,
  "SC Freiburg" = 36L,
  "TSG Hoffenheim" = 35L,
  "1. FC Köln" = 32L,
  "Union Berlin" = 30L,
  "Eintracht Frankfurt" = 28L,
  "Hertha Berlin" = 28L,
  "FC Augsburg" = 27L,
  "Mainz 05" = 26L,
  "Fortuna Duesseldorf" = 22L,
  "Werder Bremen" = 18L,
  "SC Paderborn" = 16L
)
##Aufgabe1
#a
bundesliga_mat <- matrix(bundesliga, ncol = 1)

#b
#Datentyp: numerisch (numeric)
#Klasse: Matrix

#c
first3 <- bundesliga_mat[1:3, ]
last3 <- bundesliga_mat[16:18, ]

#d
#Datentyp: numerisch
#Klasse: Vektor (numeric)

#e
first3 <- matrix(bundesliga_mat[1:3, ], ncol = 1)
last3 <- matrix(bundesliga_mat[16:18, ], ncol = 1)

#f
bundesliga_mat2 <- bundesliga_mat
rownames(bundesliga_mat2) <- names(bundesliga)

#g
#bundesliga_mat2 has named rows, which does not change the dimension, but the structure is slightly different.

#h
bundesliga_mat3 <- cbind(bundesliga_mat2, 1:18)

#i
#Datentyp: Zeichen (character)
#Klasse: Matrix
#Dimension: 18x2 (18 Zeilen, 2 Spalten)

#j
bundesliga_mat3 <- cbind(bundesliga_mat3, c("BAY","NRW","SXN","NRW","NRW","NRW","NSX","BWB","BWB","NRW","BER","HES","BER","BAY","RLP","NRW","BRE","NRW"))

#k
#The addition of character values led to a conversion of the entire matrix to the character type.

#l
colnames(bundesliga_mat3) <- c("points", "rank", "state")

#m
bundesliga_df <- as.data.frame(bundesliga_mat3)

#n
#Datentyp: Zeichen (character)
#Klasse: data.frame
#Dimension: 18x3

#o
apply(bundesliga_df, 2, class)

#p
bundesliga_df$points_int <- as.integer(bundesliga_df$points)
bundesliga_df$rank_int <- as.integer(bundesliga_df$rank)
bundesliga_df <- bundesliga_df[, c("state", "points_int", "rank_int")]

#q
sapply(bundesliga_df, class)

##Aufgabe2
# Dataframe erstellen
df <- data.frame(
  name = c("Alex", "Lilly", "Mark", "Oliver", "Martha", "Lucas", "Caroline"),
  age = c(25, 31, 23, 52, 76, 49, 26),
  height = c(177, 163, 190, 179, 163, 183, 164),
  weight = c(57, 69, 83, 75, 70, 83, 53),
  gender = c("D", "F", "M", "M", "F", "M", "F")
)
# Struktur des Dataframes anzeigen
str(df)

#a
df$gender <- factor(df$gender, levels = c("D", "F", "M"), labels = c("diverse", "female", "male"))

#b
df2 <- data.frame(working = c("Yes", "No", "No", "Yes", "Yes", "No", "Yes"))

#c
df3 <- cbind(df, df2)

#d
df3$working <- df3$working == "Yes"

#e
#Zeilen: 7
#Spalten: 6

#f
sapply(df3, class)

#g
df3$bmi <- df3$weight / (df3$height / 100)^2

#h
males_df <- subset(df3, gender == "male")

#i
subset(males_df, bmi > 23)

#j
males_df[, c("name", "bmi")]

##what happen now?