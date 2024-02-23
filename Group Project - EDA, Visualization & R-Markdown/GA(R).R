df <- read.csv(file="UK-data(csv).csv", header=TRUE,stringsAsFactors=TRUE)
df
df$Month <- factor(df$Month, levels = unique(df$Month))
head(df)
str(df)
summ_Ukdata=summary(df[,-c(1,2,3)])
summ_Ukdata
library(ggplot2)

                       
graph_total_mistake=ggplot(df, aes(x = Month, y = Total.Summons)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  labs(title = "Total Mistakes per Month",
       x = "Month",
       y = "Total Mistakes") +
  theme_minimal()


graph_total_RM=ggplot(df, aes(x = Month, y = Total.RM.)) +
  geom_bar(stat = "identity", fill = "navyblue") +
  labs(title = "Summons Total per Month (RM)",
       x = "Month",
       y = "Total RM") +
  theme_minimal()

sums_vehicle <- colSums(df[, c(4, 5, 6, 7, 8)])
sums_vehicle <- data.frame(
  category = names(sums_vehicle),
  count = sums_vehicle
)
library(scales)
graph_Distribution_mistake=ggplot(sums_vehicle[-nrow(sums_vehicle),], aes(x = "", y = count, fill = category)) +
  geom_bar(stat = "identity", width = 1, color = "white") +
  coord_polar("y") +
  theme_void() +
  ggtitle("Distribution of Summons by Vehicle Category") +
  geom_text(aes(label = paste0(count," (",round((count/sum(count))*100, 1), "%)")), position = position_stack(vjust = 0.5)) +
  scale_y_continuous(labels = percent_format())






