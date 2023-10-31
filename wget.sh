#! /usr/bin/env bash

# Same results without trailing slash, but can not reference as index.html.
wget -N -p -r -l 1 -k -K -H -E https://bayarea.energyatlas.ucla.edu
