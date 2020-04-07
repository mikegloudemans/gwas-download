# Make a folder in which to place downloaded files
mkdir download-output
cd download-output

# Download all the files
bash ../gwas-downloads.sh

# Re-zip the files into a consistent file format, so
# munging can be performed.
python ../utils/rezip.py
