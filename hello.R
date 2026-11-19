# Run this file in VS Code:
# 1. Open the Command Palette (Ctrl+Shift+P) and choose "R: Create R Terminal".
# 2. In the R terminal, run source("hello.R") from this folder.
# Alternatively, select code below and press Ctrl+Enter to run the selection.
# Expected result: the console prints 6 and a plot appears.

numbers <- c(2, 4, 6, 8, 10)
average <- mean(numbers)

print(average)
plot(numbers, type = "b", main = "My first R plot")
