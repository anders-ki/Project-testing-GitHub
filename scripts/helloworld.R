#Just a quick script for testing Git
library("tidyverse")
df <- read.csv("data/raw/20260330_raw.csv", header = TRUE, )
names(df) <- c("Age", "Height_cm")
write.csv(df, "data/processed/processed_df.csv", row.names = FALSE)
df_proc <- read.csv("data/processed/processed_df.csv", header = TRUE)
df.plot <- ggplot(df_proc, aes(x = Age, y = Height_cm)) + 
                 geom_point()
df.plot <- df.plot + geom_line()
ggsave('results/20260330_processed_plot.png', df.plot)

#test