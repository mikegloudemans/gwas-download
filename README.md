# gwas-download

This script downloads publicly available GWAS summary statistics from over 150 different publications.

No software installation is necessary; the script runs directly in a Linux terminal:

```bash gwas_downloads.sh```

The summary statistics files are downloaded into a separate folder for each study, with the naming convention `Trait-Name_First-Author_Year`.

You can download the whole collection, or you can get just a subset. The files in this script are in no particular order. You can search for a specific study either by trait name or by author name.

Some of the files are freely accessible online, but must be downloaded manually from a web browser. These files are listed in a separate section at the bottom of the script, with URLs for downloading.

When using these data, please remember to acknowledge the authors of the original studies and to cite them in any publications. Links to each GWAS publication have been included in the download script.

Help keep this list up to date by submitting pull requests with your own favorite studies. I’ll try to merge them in a timely manner.

### Future Developments

In the future, I may add:
* A script to re-format and index downloaded GWAS
* A script to download and index the UK Biobank rapid GWAS results from Ben Neale’s lab

### Contributors

* Mike Gloudemans
* Boxiang Liu
* Brunilda Balliu
