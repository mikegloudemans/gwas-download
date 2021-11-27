# gwas-download

## One-click download of formatted GWAS summary stats from 400+ publications (newly updated as of 11/27/2021)

### A note on security and privacy

All summary statistics in this compilation are already freely available for public download and can be accessed 
through the other websites linked via the script `gwas_downloads.sh`. This link is merely a standardized aggregation 
of GWAS from disparate sources. I take the rights of research participants very seriously, so please don’t hesitate 
to contact me if you have any concerns about the security and/or privacy of these data.

By using these data, you are implicitly agreeing to follow a responsible code of conduct, 
as outlined, for example, at https://www.med.unc.edu/pgc/results-and-downloads/.

For a more detailed assessment of the risks of sharing GWAS summary statistics, we recommend reading the following 
(short) white paper from the creators of the GWAS portal T2DKP: https://broad-portal-resources.s3.amazonaws.com/Risk_Assessment_KP_platform.pdf.

### Download with Globus

Every sorted, zipped, and indexed GWAS generated using the code in this repository is available 
for public download from a Globus endpoint. To access this collection, you will need to use [Globus](https://www.globus.org/), 
either with the command line tool installed on your compute server or with the free Globus Connect Personal desktop app.
For information on how to do this, please consult the Globus documentation until you are ready to download the data as follows:

The endpoint is called *gloudemans-gwas-sumstats* and is on the collection *SRCC-Oak*. 
Please let me know if you find that this collection is not publicly viewable.

The files included here have been sorted, bgzipped, and tabixed, and converted to a standardized format,
as described in the `munge` module of this repository for compatibility with downstream analyses. You can
perform these preprocessing steps yourself by following the directions below, but this will be much, much more time-consuming.

## Fast GWAS download script 

This script downloads publicly available GWAS summary statistics from over 400 different publications.

No software installation is necessary; the script runs directly in a Linux terminal:

```bash gwas_downloads.sh```

The summary statistics files are downloaded into a separate folder for each study, with the naming convention `Trait-Name_First-Author_Year`.

You can download the whole collection, or you can get just a subset. The files in this script are in no particular order. 
You can search for a specific study either by trait name or by author name.

Some of the files are freely accessible online, but must be downloaded manually from a web browser. These files are 
listed in a separate section at the bottom of the script, with URLs for downloading.

When using these data, please remember to acknowledge the authors of the original studies and to cite them in any 
publications. Links to each GWAS publication have been included in the download script.

Help keep this list up to date by submitting pull requests with your own favorite studies. I’ll try to merge them in a timely manner.

## GWAS munging scripts (updated 11/27/2021)

I've uploaded the `custom_munge.py` script that I used to convert these GWAS summary 
statistics files into a standardized format. An output (formatted) GWAS summary 
statistics file contains (at minimum) the rsids, chromosome numbers along with positions 
in either hg19 or hg38 (specifed as a configuration parameter), and p-values for every tested SNP. It will also retain the other columns 
from the original file, appended to the end of the table in tab-separated format. 
The output file will be sorted by chromosome and position, and indexed with `tabix`.

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
local version of dbSNP version 150 formatted for use with hg19 or hg38. You can download this with

```
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/snp150.txt.gz
```

You'll then need to open the file `custom_munge.py` and navigate to the function
`load_rsid_keys`, editing the line

```
    with gzip.open("/users/mgloud/projects/gwas/data/sorted_hg19_snp150.txt.gz") as f:
```
to show the location where you've stored dbSNP. (Or modify this if using hg38).

You'll also need to open `munge_menu.config` and modify the lines

```
        "input_base_dir": "...",
        "output_base_dir": "...",
```
replacing these directories with the base directory where your input GWAS files are stored,
and the base directory in which your formatted files should be stored.

While creating these scripts, I've found some other public tools for achieving 
similar tasks. In particular, check out [munge_sumstats.py](https://github.com/bulik/ldsc/blob/master/munge_sumstats.py)
from the LD Score Regression toolbox. That script performs several QC steps and sanity checks 
to make sure the formatted results it produces are trustworthy. I opted out of using that 
tool because it automates some filtering steps where I prefer to have more control, 
which can lead to errors when using `munge_sumstats.py` on GWAS with unconventional formatting; 
however, I find it useful for running a first pass through a large number of GWAS files.

If you know of any other tools/scripts for easily downloading and formatting GWAS, send me 
a comment and I'll add a link. And feel free to repurpose or modify any of the code 
here if it may be useful for you.

### Contributors

* Mike Gloudemans
* Boxiang Liu
* Brunilda Balliu
* Abhiram Rao
