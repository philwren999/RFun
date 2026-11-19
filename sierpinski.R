# Run this file in VS Code:
# Click the Run Source (play) button in the editor toolbar to run the whole file.
# If needed, open the Command Palette (Ctrl+Shift+P) and choose "R: Create R Terminal".
# Or run source("sierpinski.R") in the R terminal from this folder.
# The script draws a Sierpinski triangle using base R (no extra packages needed).

set.seed(42)

vertices <- rbind(
  c(0, 0),
  c(1, 0),
  c(0.5, sqrt(3) / 2)
)

iterations <- 50000L
coords <- matrix(0, nrow = iterations, ncol = 2)
current <- c(0.5, sqrt(3) / 6)

for (i in seq_len(iterations)) {
  vertex <- vertices[sample.int(nrow(vertices), 1L), ]
  current <- (current + vertex) / 2
  coords[i, ] <- current
}

plot(
  coords[, 1],
  coords[, 2],
  pch = 16,
  cex = 0.3,
  col = "#1f78b4",
  asp = 1,
  axes = FALSE,
  xlab = "",
  ylab = "",
  main = "Sierpinski Triangle",
  xlim = c(0, 1),
  ylim = c(0, sqrt(3) / 2)
)
