r_polarplot <- function(theta, rho, save) {
# Its very easy with ggplot2 to make a polarplot
# Data used for example plot 
# theta <- c(0,0.3927,0.7854,1.1781,1.5708,1.9635,2.3562,2.7489,3.1416,3.5343,3.9270,4.3197,4.7124,5.1051,5.4978,5.8905,6.2832)
# rho = c(4,9,20,41,66,121,155,181,156,124,76,27,11,4,2,2,1)

# Create dataframe for plotting
polar_df = data.frame(theta, rho)

# Plot with ggplot2
library(ggplot2)
ggplot(data=polar_df, aes(x=theta, y=rho)) + coord_polar(start=-pi/2, direction = -1) + geom_line() + 
  scale_x_continuous(breaks=seq(0, pi*2-pi/4, by=pi/4), labels=c('0','45','90', '135','180', '225', '270','315')) + 
  theme_bw() + theme(axis.ticks.y = element_blank(), axis.text.y = element_blank())

if (save){
  ggsave('r_polarplot.jpg', plot=last_plot())
}

}