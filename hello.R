# Run this file in VS Code:
# Click the Run Source (play) button in the editor toolbar to run the whole file.
# If needed, open the Command Palette (Ctrl+Shift+P) and choose "R: Create R Terminal".
# Or run source("hello.R") in the R terminal from this folder.
# To run selected code, select it and press Ctrl+Enter.
# Expected result: the console prints 6 and a plot appears.

numbers <- c(2, 4, 6, 8, 10)
average <- mean(numbers)

print(average)
plot(numbers, type = "b", main = "My first R plot")
