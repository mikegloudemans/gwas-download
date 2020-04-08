# Make a folder in which to place downloaded files

output_folder='download_output'
mkdir $output_folder
cd $output_folder

# Download all the files
bash ../gwas-downloads.sh

# There are even a few files in R format...
# Parse those
Rscript ../utils/parse_rdata.R

# Re-zip the files into a consistent file format, so
# munging can be performed.
python ../utils/rezip.py

