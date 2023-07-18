exactextract \
  -r "lbii:Biodiversity Intactness/lbii.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM0.gpkg" \
  -f shapeGroup \
  -s "mean(lbii)" \
  -o results/lbii__summary_adm0.csv

exactextract \
  -r "lbii:Biodiversity Intactness/lbii.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM1.gpkg" \
  -f shapeID \
  -s "mean(lbii)" \
  -o results/lbii__summary_adm1.csv
