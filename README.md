# Wget

## Pull BayREN Energy Atlas with Wget

Page formatting is bad and sometimes all on line line, which makes diffs hard.

1. `wget -N -p -nH https://bayarea.energyatlas.ucla.edu`
   1. Initial download

2. `wget -N -p -r -l 1 -nH https://bayarea.energyatlas.ucla.edu` (add `-r -l 1`)
   1. Recurse 1 level - picks up map pages.

3. `wget -N -p -r -l 1 -k -K -nH https://bayarea.energyatlas.ucla.edu` (add `-k -K`)
   1. Convert links and back up originals.

4. `wget -N -p -r -l 1 -k -K -nH -H https://bayarea.energyatlas.ucla.edu` (add `-H`)
   1. Span hosts - includes CSS, fonts, etc from other hosts.

5. `wget -N -p -r -l 1 -k -K -nH -H -E https://bayarea.energyatlas.ucla.edu` (add `-E`)
   1. Adjust extension - renames files, this addes extensions to map pages and the external CSS, which is good, but the extensions don't belong on robots and font files, or maybe they do if they are html or not found?

6. `wget -N -p -r -l 1 -k -K -H -E https://bayarea.energyatlas.ucla.edu` (remove `-nH`)
   1. Remove no host directories - organize site better, effectively just renames files from previous and prevent clobbering of files with same name.

7. `wget -N -p -r -l 1 -k -K -H -E -e robots=off https://bayarea.energyatlas.ucla.edu` (add `-e robots=off`)
   1. Turn off robot exclusion - deletes robots.txt, the only new file is the mapbox background png, only the about and index pages change, but what changes?

## What options are needed to?

* Convert file names
* Convert links to work locally
  * Relative link options?
* But don't download or change links to Google Fonts, etc.


-nH, --no-host-directories

-E, --adjust-extension

-k, --convert-links

--convert-file-only

-K, --backup-converted

-H, --span-hosts
           Enable spanning across hosts when doing recursive retrieving.

What's up with
-L, --relative


Maybe I should have just used --mirror.

## Servers

GET
https://d24kkp6t8dz3l9.cloudfront.net/usage_income/kwh/counties/
counties_38.json
counties_48.json
counties_41.json
counties_49.json
counties_21.json
counties_28.json
counties_1.json
counties_7.json
counties_43.json



## Site

https://bayarea.energyatlas.ucla.edu/
-Map by
usage_bld
usage_sqft
usage_vintage
usage_income
-Research
findings
strategies
methods
data
-About
about
tutorial
faq
contact

Profiles -> profiles
