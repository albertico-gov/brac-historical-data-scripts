#!/usr/bin/env sh

BRAC_SPATIALITE_DB=BRAC.sqlite

echo "Creating BRAC Master table..."
spatialite -silent $BRAC_SPATIALITE_DB < create_brac_master_table.sql
echo "Done!"

echo "Inserting data into BRAC Master table..."
spatialite -silent $BRAC_SPATIALITE_DB < insert_shp_data_into_brac_master.sql
echo "Done!"

echo "Creating views..."
spatialite -silent $BRAC_SPATIALITE_DB < create_brac_duplicate_views.sql
echo "Done!"

echo "Reprojecting BRAC Master table..."
spatialite -silent $BRAC_SPATIALITE_DB < reproject_brac_master_table.sql
echo "Done!"
