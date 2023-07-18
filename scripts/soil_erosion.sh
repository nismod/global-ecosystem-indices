exactextract \
  -r "soilloss_2001:Soil erosion/GloSEM_25km/Data_25km/RUSLE_SoilLoss_v1.1_yr2001_25km.tif" \
  -r "soilloss_2012:Soil erosion/GloSEM_25km/Data_25km/RUSLE_SoilLoss_v1.1_yr2012_25km.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM0.gpkg" \
  -f shapeGroup \
  -s "mean(soilloss_2001)" \
  -s "mean(soilloss_2012)" \
  -o soilloss__summary_adm0.csv

exactextract \
  -r "soilloss_2001:Soil erosion/GloSEM_25km/Data_25km/RUSLE_SoilLoss_v1.1_yr2001_25km.tif" \
  -r "soilloss_2012:Soil erosion/GloSEM_25km/Data_25km/RUSLE_SoilLoss_v1.1_yr2012_25km.tif" \
  -p "Boundaries/geoBoundariesCGAZ_ADM1.gpkg" \
  -f shapeID \
  -s "mean(soilloss_2001)" \
  -s "mean(soilloss_2012)" \
  -o soilloss__summary_adm1.csv
