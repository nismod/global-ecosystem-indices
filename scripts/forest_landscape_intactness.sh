exactextract \
  -r "flii:Forest Landscape Intactness/flii_earth.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM0.gpkg" \
  -f shapeGroup \
  -s "mean(flii)" \
  -o flii__summary_adm0.csv

exactextract \
  -r "flii:Forest Landscape Intactness/flii_earth.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM1.gpkg" \
  -f shapeID \
  -s "mean(flii)" \
  -o flii__summary_adm1.csv
