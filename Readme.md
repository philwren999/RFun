# R Development with Visual Studio Code

This guide covers setting up R in Visual Studio Code (VS Code) and running the
example script in this repository.

## Install R

Download and install R from [CRAN](https://cran.r-project.org/).

On Windows, verify the installation in PowerShell with:

```powershell
R.exe --version
```

If `R.exe` is not on your `PATH`, run it using its full path.

## Install VS Code

Download and install [Visual Studio Code](https://code.visualstudio.com/).

## Install the R extension

1. Open the Extensions view with **Ctrl+Shift+X**.
2. Search for **R**.
3. Install **R** by **REditorSupport**.

## Install R packages

In an R console, install the packages used for language features and optional
plot viewing:

```r
install.packages(c("languageserver", "httpgd"))
```

`languageserver` enables features such as code completion, IntelliSense, and
hover help. `httpgd` provides an option for viewing plots in VS Code.

## Configure the R path (if needed)

VS Code usually finds R automatically. If it does not, open your VS Code
`settings.json` and set `r.rterm.windows` to the path to your R executable. For
example:

```json
{
  "r.rterm.windows": "C:\\Program Files\\R\\R-4.6.2\\bin\\x64\\R.exe"
}
```

Adjust the path to match your R installation.

## Optional: configure the plot viewer

Install `httpgd` if you have not already:

```r
install.packages("httpgd")
```

To start the `httpgd` graphics device automatically in interactive R sessions,
add this to your `.Rprofile`:

```r
if (interactive()) {
  library(httpgd)
  hgd()
}
```

## Run the examples

Open either [`hello.R`](hello.R) or [`sin_curve.R`](sin_curve.R) in VS Code.
Click the **Run Source** play button in the editor toolbar to run the whole
file. If an R terminal is not already open, create one from the Command Palette
(**Ctrl+Shift+P** → **R: Create R Terminal**).

Alternatively, run the script from the R terminal:

```r
source("sin_curve.R")
```

To run only a line or selection, press **Ctrl+Enter** in the editor.

`hello.R` prints `6` and displays a plot. `sin_curve.R` draws a sine curve.

## Recommended extensions

These extensions are optional:

- **R Debugger** for debugging R code.
- **GitLens** for Git integration.
- **Jupyter** for notebooks.
- **Quarto** for reports and publishing.

## Clone this repository

To clone the repository and open it in VS Code:

```sh
git clone https://github.com/philwren999/RFun.git
cd RFun
code .
```
