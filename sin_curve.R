# Run this file in VS Code:
# 1. Open the Command Palette (Ctrl+Shift+P) and choose "R: Create R Terminal".
# 2. In the R terminal, run source("sin_curve.R") from this folder.
# Alternatively, select code below and press Ctrl+Enter to run the selection.

x <- seq(-2 * pi, 2 * pi, length.out = 500)

plot(
  x,
  sin(x),
  type = "l",
  lwd = 2,
  col = "blue",
  main = "Sine Curve",
  xlab = "x",
  ylab = "sin(x)"
)
grid()
