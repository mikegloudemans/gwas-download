import glob
import subprocess
for z in glob.glob("*/*.zip"):
    subprocess.call("unzip -f {0} -d {1}".format(z, z.split("/")[0]), shell=True)
