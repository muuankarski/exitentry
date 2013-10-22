library(knitr)
setwd("~/workspace/eusilc/entryexit2013")
knit("index.Rmd")
system("~/.cabal/bin/pandoc -s index.md -o index.html --number-section")

knit("load_merge.Rmd")
system("~/.cabal/bin/pandoc -s load_merge.md -o load_merge.html --toc --number-section")

knit("subset.Rmd")
system("~/.cabal/bin/pandoc -s subset.md -o subset.html --toc --number-section")
system("~/.cabal/bin/pandoc subset.md -o subset.pdf --toc --number-section")

knit("missing.Rmd")
system("~/.cabal/bin/pandoc -s missing.md -o missing.html --toc --number-section")


knit("ds_survival_mothers.Rmd")
system("~/.cabal/bin/pandoc -s ds_survival_mothers.md -o ds_survival_mothers.html --toc --number-section")



library(kaRski)
knitpandoc("index")
# basic operations
knitpandoc("load_merge")
knitpandoc("subset")
knitpandoc("missing")

# mirroring

cd ~/workspace/eusilc/entryexit2013
lftp -u np16003 -e "mput *.html;quit" ftp://np16003@www.muuankarski.org/domains/muuankarski.org/public_html/research/entryexit2013/

lftp -u np16003 -e "mput *.Rmd;quit" ftp://np16003@www.muuankarski.org/domains/muuankarski.org/public_html/research/entryexit2013/

## pdf figures
cd ~/workspace/eusilc/entryexit2013/figure
lftp -u np16003 -e "mirror -R;quit" ftp://np16003@www.muuankarski.org/domains/muuankarski.org/public_html/research/entryexit2013/figure