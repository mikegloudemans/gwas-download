# gwas-download

### Fast GWAS download script 

This script downloads publicly available GWAS summary statistics from over 150 different publications.

No software installation is necessary; the script runs directly in a Linux terminal:

```bash gwas_downloads.sh```

The summary statistics files are downloaded into a separate folder for each study, with the naming convention `Trait-Name_First-Author_Year`.

You can download the whole collection, or you can get just a subset. The files in this script are in no particular order. You can search for a specific study either by trait name or by author name.

Some of the files are freely accessible online, but must be downloaded manually from a web browser. These files are listed in a separate section at the bottom of the script, with URLs for downloading.

When using these data, please remember to acknowledge the authors of the original studies and to cite them in any publications. Links to each GWAS publication have been included in the download script.

Help keep this list up to date by submitting pull requests with your own favorite studies. I’ll try to merge them in a timely manner.

### GWAS munging scripts (updated 5/24)

I've uploaded the `custom_munge.py` script that I used to convert these GWAS summary 
statistics files into a standardized format. An output (formatted) GWAS summary 
statistics file contains (at minimum) the rsids, chromosome numbers along with positions 
in hg19, and p-values for every tested SNP. It will also retain the other columns 
from the original file, appended to the end of the table in tab-separated format. 
The output file will be sorted by chromosome and position, and indexed with tabix.

The script requires a config file in JSON format with entries for each input GWAS file. 
This requires a small amount of manual labor, but also takes care of a lot of common errors 
that may occur in this process. Luckily, I’ve included _munge_menu.config_, which contains 
the config specifications for the 200+ GWAS included in our original wget download script. 
(Note that some of these files first need to be unzipped and may require other small formatting
tasks before munging; thus, many but not all files will be ready for processing straight 
after download with the wget script. I apologize for this limitation!) For each GWAS, 
the config file requires the index of either 1) the rsid column or 2) the chromosome 
number and SNP position columns. It also requires the index of the p-value column. 
Other options exist for GWAS files with unusual formatting, and other columns such as 
effect and noneffect alleles can be included as well. See the `munge_menu.config` file
for a wide variety of examples.

Running `custom_munge.py` will also require installation of the `tabix` command-line
tool, as well as installation of the `pandas` library for Python. It also requires a
local version of dbSNP version 150 formatted for use with hg19. You can download this with

```
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/snp150.txt.gz
```

You'll then need to open the file `custom_munge.py` and navigate to the function
`load_rsid_keys`, editing the line

```
    with gzip.open("/users/mgloud/projects/gwas/data/sorted_hg19_snp150.txt.gz") as f:
```
to show the location where you've stored dbSNP.

You'll also need to open `munge_menu.config` and modify the lines

```
        "input_base_dir": "/mnt/lab_data/montgomery/shared/gwas/",
        "output_base_dir": "/users/mgloud/projects/gwas/data/munged",
```
replacing these directories with the base directory where your input GWAS files are stored,
and the base directory in which your formatted files should be stored.

I apologize that this script is still pretty hackish. Please contact me or post a bug report if
you encounter any issues that I may be able to help you resolve.

While creating these scripts, I've found some other public tools for achieving very 
similar tasks. In particular, check out [munge_sumstats.py](https://github.com/bulik/ldsc/blob/master/munge_sumstats.py)
from the LD Score Regression toolbox. That script performs several QC steps and sanity checks 
to make sure the formatted results it produces are trustworthy. I opted out of using that 
tool because it automates some filtering steps where I prefer to have a bit more control, 
which can lead to errors when using munge_sumstats.py on GWAS with unconventional formatting; 
however, I find it excellent for running a first pass through a large number of GWAS files.

If you know of any other tools/scripts for easily downloading and formatting GWAS, send me 
a comment and I'll add a link. And feel free to repurpose or modify any of the code 
here if it may be useful for you.

### Future Developments

In the future, I may add:
* A script to re-format and index downloaded GWAS
* A script to download and index the UK Biobank rapid GWAS results from Ben Neale’s lab

### Contributors

* Mike Gloudemans
* Boxiang Liu
* Brunilda Balliu
