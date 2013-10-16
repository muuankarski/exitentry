library(kaRski)
knitpandoc("index")
# basic operations
knitpandoc("load_merge")
knitpandoc("subset")
knitpandoc("missing")

# mirroring

cd ~/workspace/eusilc/entryexit2013
## html
lftp -u np16003 -e "mput *.html;quit" ftp://np16003@www.muuankarski.org/domains/muuankarski.org/public_html/research/entryexit2013/

## pdf figures
cd ~/workspace/eusilc/entryexit2013/figure
lftp -u np16003 -e "mirror -R;quit" ftp://np16003@www.muuankarski.org/domains/muuankarski.org/public_html/research/entryexit2013/figure