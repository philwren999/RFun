To set up Visual Studio Code (VS Code) for R development, follow these steps:

1. Install R

Download and install R from CRAN:

https://cran.r-project.org/

After installation, verify it works:

R --version

2. Install VS Code

Download VS Code:

https://code.visualstudio.com/
3. Install the R Extension

Open VS Code and install:

R (by REditorSupport)

Extensions view:

Press Ctrl+Shift+X
Search for "R"
Install the extension by REditorSupport
4. Install R Tools Package

Open an R console and run:

install.packages("languageserver")
install.packages("httpgd")


These provide:

Code completion
IntelliSense
Hover help
Plot viewing in VS Code
5. Configure the R Path (if needed)

On Windows, VS Code usually finds R automatically. If not, add to your settings.json:

{
    "r.rterm.windows": "C:\\Program Files\\R\\R-4.6.0\\bin\\R.exe"
}


Adjust the version number to match your installation.

6. Install Recommended Extensions

Besides the R extension, I recommend:

R Debugger
GitLens (Git integration)
Jupyter (for R notebooks)
Quarto (for reports and publishing)
7. Enable Plot Viewer (optional)

In R:

install.packages("httpgd")


Then add to your .Rprofile:

if (interactive()) {
  library(httpgd)
  hgd()
}


Plots will appear directly inside VS Code.

8. Test the Setup

Create a file test.R:

x <- rnorm(100)
mean(x)

plot(x)


Press:

Ctrl+Enter to run the current line/selection
Alt+Enter to run the whole file
If you're working with GitHub projects

I can see you currently have a GitHub repository (RFun) open in your browser. A typical workflow would be:

git clone https://github.com/philwren999/RFun.git
cd RFun
code .


This opens the repository directly in VS Code with Git integration ready to use.

If you're on Windows, I can also show you how to set up Rtools, Git, package development (devtools, usethis), and debugging for a complete R development environment.
