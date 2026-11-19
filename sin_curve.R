# Run this file in VS Code:
# Click the Run Source (play) button in the editor toolbar to run the whole file.
# If needed, open the Command Palette (Ctrl+Shift+P) and choose "R: Create R Terminal".
# Or run source("sin_curve.R") in the R terminal from this folder.
# To run selected code, select it and press Ctrl+Enter.

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
