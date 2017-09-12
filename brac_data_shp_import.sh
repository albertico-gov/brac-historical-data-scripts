#!/usr/bin/env sh

BRAC_SPATIALITE_DB=data/BRAC.sqlite
BRAC_SRID=4019
BRAC_GEOM_COLUMN=geom
BRAC_CHARSET=UTF-8
BRAC_ALT_CHARSET=CP850

echo "---------------"
echo "IMPORTING BRAC 12.30.15"
echo ""
spatialite_tool -i -shp "data/BRAC 12.30.15/BRAC 12.30.15" -d $BRAC_SPATIALITE_DB -t BRAC_12_30_15_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRAC 12.30.15/BRAC 12.30.15.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_12_30_15_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 1.13.12"
echo ""
spatialite_tool -i -shp "data/BRACS 1.13.12/BRACS 1.13.12" -d $BRAC_SPATIALITE_DB -t BRAC_1_13_12_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_ALT_CHARSET
# spatialite_tool -i -dbf "data/BRACS 1.13.12/BRACS 1.13.12.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_1_13_12_DBF -c $BRAC_ALT_CHARSET
echo "---------------"
echo "IMPORTING BRAC 1.16.14"
echo ""
spatialite_tool -i -shp "data/BRACS 1.16.14/BRACS 1.16.14" -d $BRAC_SPATIALITE_DB -t BRAC_1_16_14_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACS 1.16.14/BRACS 1.16.14.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_1_16_14_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 3.10.09"
echo ""
spatialite_tool -i -shp "data/BRACs 3.10.09/BRACs 3.10.09" -d $BRAC_SPATIALITE_DB -t BRAC_3_10_09_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACs 3.10.09/BRACs 3.10.09.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_3_10_09_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 3.30.15"
echo ""
spatialite_tool -i -shp "data/BRACS 3.30.15/BRAC_3.30.15" -d $BRAC_SPATIALITE_DB -t BRAC_3_30_15_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACS 3.30.15/BRAC_3.30.15.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_3_30_15_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 4.3.09"
echo ""
spatialite_tool -i -shp "data/BRACS 4.3.09/BRACS 4.3.09" -d $BRAC_SPATIALITE_DB -t BRAC_4_3_09_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACS 4.3.09/BRACS 4.3.09.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_4_3_09_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 5.11.06"
echo ""
spatialite_tool -i -shp "data/BRACS 5.11.06/BRACS 5.11.06" -d $BRAC_SPATIALITE_DB -t BRAC_5_11_06_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACS 5.11.06/BRACS 5.11.06.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_5_11_06_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 6.13.13"
echo ""
spatialite_tool -i -shp "data/BRACS 6.13.13/BRACS 6.13.13" -d $BRAC_SPATIALITE_DB -t BRAC_6_13_13_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_ALT_CHARSET
# spatialite_tool -i -dbf "data/BRACS 6.13.13/BRACS 6.13.13.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_6_13_13_DBF -c $BRAC_ALT_CHARSET
echo "---------------"
echo "IMPORTING BRAC 8.12.14"
echo ""
spatialite_tool -i -shp "data/BRACs 8.12.14/BRACs 8.12.14" -d $BRAC_SPATIALITE_DB -t BRAC_8_12_14_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACs 8.12.14/BRACs 8.12.14.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_8_12_14_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 11.6.12"
echo ""
spatialite_tool -i -shp "data/BRACS 11.6.12/BRACS 11.6.12" -d $BRAC_SPATIALITE_DB -t BRAC_11_6_12_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACS 11.6.12/BRACS 11.6.12.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_11_6_12_DBF -c $BRAC_CHARSET
echo "---------------"
echo "IMPORTING BRAC 11.30.12"
echo ""
spatialite_tool -i -shp "data/BRACS 11.30.12/BRACS 11.30.12" -d $BRAC_SPATIALITE_DB -t BRAC_11_30_12_SHP -s $BRAC_SRID -g $BRAC_GEOM_COLUMN -c $BRAC_CHARSET
# spatialite_tool -i -dbf "data/BRACS 11.30.12/BRACS 11.30.12.DBF" -d $BRAC_SPATIALITE_DB -t BRAC_11_30_12_DBF -c $BRAC_CHARSET
echo "---------------"
