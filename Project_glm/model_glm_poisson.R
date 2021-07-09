library(readxl)
df<- read_excel("Master of Data Science/Project_ky1/Project_glm/data/1-s2.0-S2352340921003619-mmc1.xlsx")
summary(df)

df$Totalchildreneverborn = factor(df$Totalchildreneverborn)

df$Womanoccupation <- factor(df$Womanoccupation,
                             levels=c(0, 10, 22), 
                             labels=c("Not currently working", "Sales worker", "Professional worker/Others"))


df$Childdesire = factor(df$Childdesire, 
                        level=c(1, 2), 
                        labels=c("Wanted then", "Wanted later/No more"))

df$Region = factor(df$Region, 
                   level=c(1, 2, 3, 4, 5, 6), 
                   label=c("North Central", "North East", "North West", "South East", "South South", "South West"))

df$Urban = factor(df$Urban,
                  levels = c(1, 2),
                  labels = c("Urban", "Rural"))

df$Education = factor(df$Education,
                      levels = c(0, 1, 2),
                      labels = c("No education", "Primary", "Secondary/Higher"))

df$Fertilitypreferences = factor(df$Fertilitypreferences,
                                 levels = c(1, 2),
                                 labels = c("Have another", "No more/Others"))

df$Currentlyworking = factor(df$Currentlyworking,
                             levels = c(0, 10),
                             labels = c("No", "Yes"))

df$Pregnancyterminated = factor(df$Pregnancyterminated,
                                levels = c(1, 2),
                                labels = c("No", "Yes"))

df$Kidtwin = factor(df$Kidtwin, 
                    levels=c(1,2), 
                    labels = c("Single birth", "Multiple birth"))

df$Kidalive = factor(df$Kidalive,
                     levels = c(0, 1),
                     labels = c("No", "Yes"))

df$Kidsex = factor(df$Kidsex,
                    levels=c(1, 2), 
                    labels=c("Female", "Male"))

df$Religion = factor(df$Religion,
                     levels = c(1, 2),
                     labels = c("Muslim/Islam", "Christian/Others"))

df$Pregnant = factor(df$Pregnant,
                     levels = c(0, 1),
                     labels = c("No", "Yes"))


# rename columns
colnames(df) = c("Cheb", "Urban", "Region", "Pregnant", "Religion", 
                 "Hhha","Age1stmar", "Pregterm","Age1stbirth","Curwor","Woc",
                 "Fp", "Childdesire", "Kidsex", "Kidalive", "Kidtwin", "Education", "PERWEIGHT")

summary(df)
colnames(df)

hist(df$Cheb)

library(ggplot2)


boxplot(Cheb ~ Woc, data = df)
