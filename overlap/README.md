# overlap

Author: Mike Gloudemans

## Find GWAS and eQTL overlaps

This script takes a set of GWAS traits and a set of eQTL studies, and
identifies the regions where the significant GWAS SNPs overlap or are near
to significant eQTL SNPs.
The purpose is to identify loci at which there may be GWAS / eQTL colocalization,
but many other uses are also possible.

GWAS and eQTL studies must be in the format produced by the `munge` module,
although this can be achieved manually by renaming the appropriate columns
and `tabix`ing the `bgzip`ped results.

One command-line argument is required: a JSON-formatted config file
specifying the test parameters and the location of the input and output
files.

Example command:

```
python list_snps_to_test.py config/simple-example.config
```

## Config

The config file requires a very specific format; luckily, it is
simple to create by following the instructions here. 

An example config file is located in the subdirectory `config/simple-example.config`.
You can follow along with this example or with the more complicated sample
file `config/complex-example.config`, which demonstrates all possible configuration
features. Note that these config files are merely an example, 
and will NOT actually work with the script unless you have generated eQTL
and GWAS files with the same names.

The top level of the config file requires 4 entries, which are described below.

### `"output_directory"`

The directory in which to create the output files.

### `"output_base"`

The base name of the output files; this base string will be extended according to the
other specified parameters.

Example from `simple-example.config`:

```
{
	...,
	"output_directory": "/mydisk/myprojects/colocalization/output/",
        "output_base" : "my-simple-example"
}
```

All output files from this run will be of the form `/mydisk/myprojects/colocalization/output/my-simple-example*`.

### `"gwas_groups"`

A list of different "groups" of GWAS studies to be analyzed together, each of which
is a dictionary describing the file locations and the parameters to be used. These files
will be searched for all independent genome-wide significant SNPs.

We have allowed multiple different groups because in some cases,
you might want to analyze different GWAS files using different parameters (e.g.
change the significance threshold for a subset of GWAS files or check for overlaps
with a different set of eQTL files.)

SNPs in the highly recombinant MHC region of chromosome 6 will be automatically
excluded from the output sets.

Example from `simple-example.config`:

```
{	
	"gwas_groups":
	{
		"gwas-lung-and-heart":
		{
			...	
		}
	},	
	...
}
```

Our simple example contains only one GWAS group called `gwas-lung-and-heart`.

Beneath the group name, you must then create a dictionary specifying 4 parameters:

#### `"files"`

A list of absolute paths to the `bgzip`ped, `tabix`ed GWAS files you want to
analyze as part of this group. Wildcards are accepted in these path names.

Example from `simple-example.config`:

```
{	
	"gwas_groups":
	{
		"gwas-lung-and-heart":
		{
			"files": 
			[
				"/mydisk/data/heart_gwas/gwas*.gz"
			],
			...
		}
	},	
	...
}
```

This simple example loads all GWAS in the `heart_gwas` directory fitting the
wildcard-specified format `gwas*.gz`.

#### `"gwas_cutoff_pvals"`

A list of p-values below which you want to consider a GWAS SNP significant.
Specifying multiple numbers allows you to get lists for a variety of different
cutoffs, but including more numbers in this field will take longer to run.

#### `"gwas_windows"`

The minimum distance apart (in bp) that two SNPs must be before they
are called independent and both included in this analysis. (The most significant
SNP at a locus will always be selected first.)
Specifying multiple numbers allows you to get lists for a variety of different
window sizes, but including more numbers in this field will take longer to run.

Example from `simple-example.config`:

```
{	
	"gwas_groups":
	{
		"gwas-lung-and-heart":
		{
			...,
			"gwas_cutoff_pvals": [5e-8],
			"gwas_windows": [1000000],
			...
		}
	},	
	...
}
```

Our example will select all GWAS SNPs that have a p-value less
than 5e-8, and that are at least 1Mb away from the nearest SNP
that has already been selected.

#### `"eqtl_targets"`

A list of eQTL groups in which to check for GWAS-eQTL overlaps.
These strings must correspond to the defined `"eqtl_groups"`,
as described in the next section.

For each eQTL target group, two more parameters must be 
specified:

##### `"cutoff_pvals"`

The minimum eQTL p-value that must be present near the GWAS
region for us to save this combination in our output file.
Specifying multiple numbers allows you to get lists for a variety of different
thresholds; unlike in the GWAS cutoffs, multiple numbers can be analyzed without
costing too much additional compute time.

##### `"windows"`

The minimum distance from the lead GWAS SNP that an eQTL SNP can
be for it to be considered nearby.
Specifying multiple numbers allows you to get lists for a variety of different
window sizes; unlike in the GWAS cutoffs, multiple numbers can be analyzed without
costing too much additional compute time. 

Example from `simple-example.config`:

```
{	
	"gwas_groups":
	{
		"gwas-lung-and-heart":
		{
			...,
			"eqtl_targets":
			{
                                "lung-tissue":
                                {
                                        "cutoff_pvals": [1e-5],
                                        "windows": [1, 10000]
                                },
                                "heart-tissue":
                                {
                                        "cutoff_pvals": [1e-5],
                                        "windows": [1, 10000]
                                }

			}
		}
	},	
	...
}
```

Our example run will look for significant eQTLs in the eQTL groups `lung-tissue` and
`heart-tissue`. These groups will be defined in the final section `eqtl_groups`,
described below.

In both lung tissues and heart tissues, our run will generate two files each because
there are 2 numbers given for the `windows` parameter. One file will look only at eQTL
SNPs within 1bp of the GWAS hit; the other will search up to 10Kb for a significant
eQTL SNP. In both cases, a significant eQTL SNP will be defined as one with an
association p-value of less than 1e-5, as defined by the `cutoff_pvals` parameter.

### `"eqtl_groups"`

A list of different eQTL groups to be tested for overlap with the above GWAS files.
The names of these groups should correspond to the ones specified in the `"eqtl_targets"`
sections as described above.

Each eQTL group must contain an entry `"files"` that specifies a list of all eQTL
files to be tested as part of this group. The eQTL files must be `bgzip`ped and
`tabix`ed. Wildcards may be used in these file names.

Example from `simple-example.config`:

```
{
	...,
	"eqtl_groups":
	{
                "lung-tissue":
                {
                        "files": [
                                "data/lung.eqtls.txt.gz"
                        ]
                },
                "heart-tissue":
                {
                        "files": [
                                "data/aorta.eqtls.txt.gz",
                                "data/left-ventricle.eqtls.txt.gz",
                                "data/right-atrium.eqtls.txt.gz"
                        ]
                }
	}	
}
```

There are two eQTL groups in this example, corresponding to the two target
groups specified earlier in the GWAS groups section. The `lung-tissue` group
contains only one eQTL file. The `heart-tissue` group contains three eQTL files,
corresponding to three different parts of the heart. Thus, every GWAS file specified
here as part of our GWAS group will be tested for overlap with eQTLs in one lung tissue
and in three heart tissues.


## Output

Three output files are produced:

### `*coloc-tests.txt`

A list of all SNP-gene pairs to be considered for colocalization,
along with the eQTL file and the GWAS file in which they were found
to overlap. 

If a SNP and gene overlap in multiple different file
combinations, all will be listed.

### `*snp-gene-pairs-considered.txt`

A list of all SNP-gene pairs to be considered for colocalization BEFORE
thresholding on eQTL p-values. That is, a complete list of all GWAS hits
along with all genes located within range of these GWAS hits in the
associated eQTL file. (This file might be compared with the `*coloc-tests.txt`
file to estimate the ratio of the number of SNP-gene pairs tested for eQTLs to the 
number of SNP-gene pairs that actually have eQTLs.

If a SNP and gene overlap in multiple different file
combinations, all will be listed.

### `*snps-considered.txt`

A list of all SNPs that were the lead SNP for a locus in at 
least one of the GWAS specified in this study.

Unlike the other two output files, this file does not depend
on which eQTL target group was used, so only one such file will
be generated for each combination of GWAS group, GWAS window size,
and GWAS threshold.

## Troubleshooting

### Failure loading config file

If the config file is malformed, the
Python traceback will display the line of the file in which
the error was found.

If anything in these directions is unclear or if you find bugs
in the code, please submit an issue report and I will fix them ASAP.

(Last updated: 4/10/2019)
