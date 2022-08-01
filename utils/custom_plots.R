# Custom functions to plot observed, predicted and residual values for each method
library(ggplot2, quietly = T, verbose = F)

# Function to plot observed vs predicted values
predicted_observed_plot <- function(predicted_val, observed_val, residual_val, model_name = "", R_squared, ...) {
  
  plot <- ggplot(mapping = aes(x = predicted_val, y = observed_val, col = abs(residual_val))) +
    geom_point(alpha = 0.9, size = 2) +
    geom_abline(intercept = 0, slope = 1) +
    # facet_wrap(~) +
    labs(title = paste0(model_name, "\nPredicted vs Observed: Test Set"),
         subtitle = paste0("R-squared: ", R_squared),
         x = "Predicted",
         y = "Observed",
         col = "Absolute Deviation") +
    theme_bw() +
    theme(aspect.ratio = 0.9, panel.grid.minor.x = element_blank(), legend.title = element_text(size = 10, face="bold"), legend.text = element_text(size = 9), plot.title = element_text(size=12, face="bold"), axis.title=element_text(size=10, face="bold"), axis.text.x = element_text(angle = 0), legend.position = "none") +
    # scale_x_continuous(expand = c(0,0)) +
    # scale_y_continuous(expand = c(0,0)) + 
    coord_equal() + scale_color_viridis_c(direction = -1)
  
  return (plot)
}

# Function to plot residuals
residuals_plot <- function(predicted_val, residual_val, model_name = "", MAE, RMSE, ...) {
  
  plot <- ggplot(mapping = aes(x = predicted_val, y = residual_val, col = abs(residual_val))) +
    geom_point(alpha = 0.9, size = 2) +
    geom_abline(intercept = 0, slope = 0) +
    # facet_wrap(~) +
    labs(
      title = paste0(model_name, "\nResiduals: Test Set"),
      subtitle = paste0("RMSE: ", RMSE, ", MAE: ", round(MAE, 3)),
      x = "Predicted",
      y = "Residual",
      col = "Absolute Deviation"
    ) +
    theme_bw() +
    theme(aspect.ratio = 0.9, panel.grid.minor.x = element_blank(), legend.title = element_text(size = 10, face="bold"), legend.text = element_text(size = 9), plot.title = element_text(size=12, face="bold"), axis.title=element_text(size=10, face="bold"), axis.text.x = element_text(angle = 0), legend.position = "none") +
    # scale_x_continuous(expand = c(0,0)) +
    # scale_y_continuous(expand = c(0,0)) +
    coord_equal() + scale_color_viridis_c(direction = -1)
  
  return (plot)
}