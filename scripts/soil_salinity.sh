set -e
set -x

# gdal_translate \
#     -co "COMPRESS=LZW" \
#     Soil\ salinity\ map/salmap1986.vrt Soil\ salinity\ map/salmap1986.tif

# gdal_translate \
#     -co "COMPRESS=LZW" \
#     Soil\ salinity\ map/salmap2016.vrt Soil\ salinity\ map/salmap2016.tif

# gdal_calc.py --calc "A==1" -A Soil\ salinity\ map/salmap1986.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap1986_1_slightly.tif
# gdal_calc.py --calc "A==2" -A Soil\ salinity\ map/salmap1986.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap1986_2_moderately.tif
# gdal_calc.py --calc "A==3" -A Soil\ salinity\ map/salmap1986.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap1986_3_highly.tif
# gdal_calc.py --calc "A==4" -A Soil\ salinity\ map/salmap1986.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap1986_4_extremely.tif

# gdal_calc.py --calc "A==1" -A Soil\ salinity\ map/salmap2016.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap2016_1_slightly.tif
# gdal_calc.py --calc "A==2" -A Soil\ salinity\ map/salmap2016.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap2016_2_moderately.tif
# gdal_calc.py --calc "A==3" -A Soil\ salinity\ map/salmap2016.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap2016_3_highly.tif
# gdal_calc.py --calc "A==4" -A Soil\ salinity\ map/salmap2016.tif --creation-option "COMPRESS=LZW" --outfile Soil\ salinity\ map/salmap2016_4_extremely.tif


exactextract \
  -r "soilsalinity_1986:Soil salinity map/salmap1986.tif" \
  -r "soilsalinity_1986_1_slightly:Soil salinity map/salmap1986_1_slightly.tif" \
  -r "soilsalinity_1986_2_moderately:Soil salinity map/salmap1986_2_moderately.tif" \
  -r "soilsalinity_1986_3_highly:Soil salinity map/salmap1986_3_highly.tif" \
  -r "soilsalinity_1986_4_extremely:Soil salinity map/salmap1986_4_extremely.tif" \
  -r "soilsalinity_2016:Soil salinity map/salmap1986.tif" \
  -r "soilsalinity_2016_1_slightly:Soil salinity map/salmap2016_1_slightly.tif" \
  -r "soilsalinity_2016_2_moderately:Soil salinity map/salmap2016_2_moderately.tif" \
  -r "soilsalinity_2016_3_highly:Soil salinity map/salmap2016_3_highly.tif" \
  -r "soilsalinity_2016_4_extremely:Soil salinity map/salmap2016_4_extremely.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM0.gpkg" \
  -f shapeGroup \
  -s "mean(soilsalinity_1986)" \
  -s "sum(soilsalinity_1986_1_slightly)" \
  -s "sum(soilsalinity_1986_2_moderately)" \
  -s "sum(soilsalinity_1986_3_highly)" \
  -s "sum(soilsalinity_1986_4_extremely)" \
  -s "mean(soilsalinity_2016)" \
  -s "sum(soilsalinity_2016_1_slightly)" \
  -s "sum(soilsalinity_2016_2_moderately)" \
  -s "sum(soilsalinity_2016_3_highly)" \
  -s "sum(soilsalinity_2016_4_extremely)" \
  -o soilsalinity__summary_adm0.csv



exactextract \
  -r "soilsalinity_1986:Soil salinity map/salmap1986.tif" \
  -r "soilsalinity_1986_1_slightly:Soil salinity map/salmap1986_1_slightly.tif" \
  -r "soilsalinity_1986_2_moderately:Soil salinity map/salmap1986_2_moderately.tif" \
  -r "soilsalinity_1986_3_highly:Soil salinity map/salmap1986_3_highly.tif" \
  -r "soilsalinity_1986_4_extremely:Soil salinity map/salmap1986_4_extremely.tif" \
  -r "soilsalinity_2016:Soil salinity map/salmap1986.tif" \
  -r "soilsalinity_2016_1_slightly:Soil salinity map/salmap2016_1_slightly.tif" \
  -r "soilsalinity_2016_2_moderately:Soil salinity map/salmap2016_2_moderately.tif" \
  -r "soilsalinity_2016_3_highly:Soil salinity map/salmap2016_3_highly.tif" \
  -r "soilsalinity_2016_4_extremely:Soil salinity map/salmap2016_4_extremely.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM1.gpkg" \
  -f shapeID \
  -s "mean(soilsalinity_1986)" \
  -s "sum(soilsalinity_1986_1_slightly)" \
  -s "sum(soilsalinity_1986_2_moderately)" \
  -s "sum(soilsalinity_1986_3_highly)" \
  -s "sum(soilsalinity_1986_4_extremely)" \
  -s "mean(soilsalinity_2016)" \
  -s "sum(soilsalinity_2016_1_slightly)" \
  -s "sum(soilsalinity_2016_2_moderately)" \
  -s "sum(soilsalinity_2016_3_highly)" \
  -s "sum(soilsalinity_2016_4_extremely)" \
  -o soilsalinity__summary_adm1.csv
