# tinytax is an r-package
# TuinyTex measn the LaTeX distribution.

# Just install the R-package
install.packages('tinytex')
library(tinytex)

# install the LaTex distribution via R
tinytex::install_tinytex(TRUE)

# Alternative
tinytex::install_tinytex(force = FALSE,
                         dir = "auto",
                         repository = "ctan",
                         extra_packages = NULL)

# Alternative 2.
tinytex::install_tinytex(repository = 'https://texlive.info/tlnet-archive/2017/04/13/tlnet')

# install tinytex via prebuilt
tinytex:::install_prebuilt()

# Check the LaTex distribution existence
tinytex:::is_tinytex()

# check the tinytex installation success or not
tinytex::tinytex_root()

tinytex::tlmgr_update()  # update LaTeX packages

# When these functions detect LaTeX packages required but not installed 
# in TinyTeX, they will automatically install the missing packages 
# by default.
# writeLines(c(
#   '\\documentclass{article}',
#   '\\begin{document}', 'Hello world!', '\\end{document}'
# ), 'test.tex')
tinytex::pdflatex('test.tex')

# Developer may want to install some more packages via 
# tinytex:::install_yihui_pkgs()
tinytex:::install_yihui_pkgs()

# uninstall LaTeX distribution
tinytex::uninstall_tinytex(force = FALSE)

# reinstall LaTeX distribution
tinytex::reinstall_tinytex(packages = TRUE)


# Search mssing LaTex library
tinytex::tlmgr_search('/unicode-math.sty')   # search for times.sty
tinytex::tlmgr_install('unicode-math')      # install the psnfss package
tinytex::tlmgr_update() 
tinytex::tlmgr_search('/xcolor.sty') 
tinytex::tlmgr_install('xcolor') 
