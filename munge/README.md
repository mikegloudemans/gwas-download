# munge

Author: Mike Gloudemans

## Convert arbitrary GWAS summary statistics files to a standardized format

Because GWAS summary statistics files take many shapes and there is currently
no universal standard, it is often necessary to munge the files into a
consistent format before running an analysis on many GWAS at once.
This script takes a GWAS file of arbitrary input format and converts it
into a standardized format that can be used with the other modules in this
project.

NOTE: If you are trying to do this in a completely automated manner, but with
lower confidence that every GWAS file is properly processed, then I'd instead
recommend the excellent `munge_sumstats.py` script provided at 
`https://github.com/bulik/ldsc/blob/master/munge_sumstats.py`. The reason
I created this script instead of using that one is because I found that many
GWAS files have inconsistent effect vs. non-effect allele specifications,
different genome formats, unconventional column headers, and a whole bunch
of other quirks that make it hard for that script to properly process them.
Thus, in this script I've added options for dealing with most of the special
cases that I've encountered, and I'll describe these features in more detail below.

If you've only downloaded the GWAS files listed in my `download` module, then
you're in luck; the file `munge_menu.config` contains the required specifications
for munging all of these (over 200) GWAS, so all you'll have to do is run this module
with the pre-supplied config file.

(Note that some of these files first need to be unzipped and the directories may also need
to be renamed before munging; thus, many but not all files will be ready for processing immediately
after download with the wget script. I apologize for this limitation and hope to fix it
sometime in the future.) 

If you're trying to munge your own files, or other files not include in my current
set of downloads, then you must create a JSON configuration file that specifies
which of the columns in each input file corresponds to each SNP attribute you
wish to capture. I'll describe this process in detail below.

The script can be run using a command of the form
```
python custom_munge.py munge_menu.config
```

If you have many GWAS files to process (particularly if you have files
with high SNP density or with many different traits listed in the same file)
this may take many hours to run, but should at least finish on the order of days
rather than weeks.

### Required dependencies

Running `custom_munge.py` will also require installation of the `tabix` command-line
tool, as well as installation of the `pandas` library for Python. It also requires a
local version of dbSNP formatted for use with your desired genome. For example, you
can download dbSNP version 150 for hg19 using the command.

```
wget http://hgdownload.cse.ucsc.edu/goldenPath/hg19/database/snp150.txt.gz
```

You'll then need to open the file `custom_munge.py`, navigate to the function
`load_rsid_keys` and edit the line

```
    with gzip.open("/users/mgloud/projects/gwas/data/sorted_hg19_snp150.txt.gz") as f:
```
to show the location where you've stored dbSNP.

### Running with the default config file

First, download and install the required dependencies as described in the previous section.

Then open `munge_menu.config` and modify the lines
```
        "input_base_dir": "/mnt/lab_data/montgomery/shared/gwas/",
        "output_base_dir": "/users/mgloud/projects/gwas/data/munged",
```
replacing these directories with the base directory where your input GWAS files are stored,
and the base directory in which your formatted output files should be stored.

Then simply run the command
```
python custom_munge.py munge_menu.config
```

### Creating a config file (standard options)

I recommend viewing `munge_menu.config` for an example of how the config file
should be formatted.

The top level of a config file is a JSON object containing three keys:

#### `input_base_dir`

The directory containing all the GWAS data. This directory should contain
one subdirectory for each GWAS.

#### `output_base_dir`

The directory where output formatted GWAS files will be placed.

#### `studies`

This is a list containing an individual object for each GWAS. The object will specify
the attributes of the input GWAS; each possible parameter for this object is described
in detail below.

For each GWAS, the config file requires at minimum the index of either 1) the rsid 
column or 2) the chromosome number and SNP position columns. It also requires the 
index of the p-value column. I recommend specifying as many of the columns as possible
since many columns that are optional for this script may in fact be required for other
downstream analyses.

NOTE: Any column specified in this manner will no longer exist in the output file
under its original column header. However, all remaining columns that were not processed
by this script will be concatenated horizontally onto the end of the table so that 
no metadata about the SNPs is lost.

##### `study_info` (required)

The name of the directory containing the GWAS files for this study.

##### `delimiter` (required)

The delimiter separating columns in the file. If the delimiter is
simply whitespace, you can specify
```
"delimiter": "\\s*"
```

##### `chr_index` (required)

The index of the column containing the chromosome number, if present, or "-1" if not present.

##### `snp_pos_index` (required)

The index of the column containing the chromosome number, if present, or "-1" if not present.

##### `traits` (required)

A object of all traits included in the file. Within this file, the key should be the name of the trait and the
value should be a list of all the files containing the GWAS statistics. (Usually this list contains only one string).

The input GWAS files can be either `.txt` files or `.gz` files; the script will automatically infer the format based on
the file ending. However, the script will fail if a gzipped file is named without the `.gz` file suffix, or vice versa.

For an example of a trait that loads data from more than one file, see "Adiponectin_Dastani_2012" in `munge_menu.config`.

If more than one trait is given, then they will be grouped into a single output file with a `trait` column that takes the
name of the key given in this object. Only specify multiple traits in the same study object if you want them to be grouped together
in the same output file.

##### `rsid_index`

The index of the column containing the rsid, if present.

##### `pvalue_index`

The index of the column containing the pvalue, if present.

##### `effect_allele_index`

The index of the column containing the effect allele, if present.

##### `non_effect_allele_index`

The index of the column containing the non-effect allele, if present.

##### `direction_index`

The index of the column containing the non-effect allele, if present.
(Unlike most specified columns, this one may be the same as another
specified column, and will not be renamed in the output file.)

##### `maf_index`

The index of the column containing the minor allele frequency, if present.

##### `effect_index`

The index of the column containing the effect size, if present.

##### `se_index`

The index of the column containing the standard error of the effect size or odds ratio, if present.

##### `or_index`

The index of the column containing the standard error of the odds ratio, if present.

##### `n_total_index`

The index of the column containing the total number of alleles tested in the population, if present.

##### `zscore_index`

The index of the column containing the Z-score for the GWAS test, if present.
In most cases, this will not be present and is not necessary.

##### `tstat_index`

The index of the column containing the T-statistic for the GWAS test, if present.
In most cases, this will not be present and is not necessary.

### Creating a config file (advanced options)

The available options include all the options described in the "standard options" section.
However, in some cases there will be a strangely-formatted GWAS that requires additional
modifications. In that case, you can add in the following parameters to the study objects.

##### `output_file`

By default, the output file is the same as the `study_info` field. If you wish to have 
an output file whose name does not match the input directory name, you can specify the
`output_file` field field to override the default output name.

##### `snp_split_char`

In some files, the SNP and the chromosome are given in the same field, separated by
a delimiter such as an underscore or a colon. When this happens, you can specify the
same column for both the `chr_index` and `snp_pos_index` fields, and then specify the
delimeter using the `snp_split_char` parameter.

An example of this is in the study "Sleep-Duration_Marinelli_2016".

##### `no_header`

By default, it is assumed that the input file has a header line. If not,
you can specify `no_header` to be `"True"`.

##### `skip_rows`

If the file begins with irrelevant lines, specify the number of lines that
should be skipped over. (This should not include the header; if there is also
no header, then also specify `no_header`.

##### `multi_column`

In some cases, a single output file contains multiple p-values of interest, for different
traits. When this happens, set `multi-column` to a list containing the file of interest.
Then, in the `traits` object, instead of specifying the file in the value fields, give a 
number specifying the column in which the p-value for the corresponding trait is found.

An example of this is shown in the study object for "Musculoskeletal-Traits_Medina-Gomez_2017".

(Admittedly, this is not a very clean way of doing this and is something I hope to change
at some point.)

### Output format

An output (formatted) GWAS summary statistics file contains (at minimum) the rsids,
chromosome numbers along with positions on the chromosome and p-values for every tested SNP. 
It will also retain any other columns in the original file, appended to the end of 
the table in tab-separated format. The output file will be sorted by chromosome and 
position, zipped, and indexed with tabix.

### Troubleshooting

I realize that this script is still pretty hackish! Please contact me or post a bug report if
you encounter any issues that I may be able to help you resolve. I'll be happy
to assist you and to update the script to make it as useful as possible.

