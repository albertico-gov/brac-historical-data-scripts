# Historical BRAC data scripts

The following scripts provide some simple data processing for the SBA's Historical BRAC data.  It is assumed that the files have been extracted under the follow directory hierarchy:

* data/
  * BRAC 12.30.15/
    * BRAC 12.30.15.SHP
    * BRAC 12.30.15.DBF
  * BRACS 1.13.12/
    * BRACS 1.13.12.SHP
    * BRACS 1.13.12.DBF
  * BRACS 1.16.14/
    * BRACS 1.16.14.SHP
    * BRACS 1.16.14.DBF
  * BRACs 3.10.09/
    * BRACs 3.10.09.SHP
    * BRACs 3.10.09.DBF
  * BRACS 3.30.15/
    * BRAC_3.30.15.SHP
    * BRAC_3.30.15.DBF
  * BRACS 4.3.09/
    * BRACS 4.3.09.SHP
    * BRACS 4.3.09.DBF
  * BRACS 5.11.06/
    * BRACS 5.11.06.SHP
    * BRACS 5.11.06.DBF
  * BRACS 6.13.13/
    * BRACS 6.13.13.SHP
    * BRACS 6.13.13.DBF
  * BRACs 8.12.14/
    * BRACs 8.12.14.SHP
    * BRACs 8.12.14.DBF
  * BRACS 11.6.12/
    * BRACS 11.6.12.SHP
    * BRACS 11.6.12.DBF
  * BRACS 11.30.12/
    * BRACS 11.30.12.SHP
    * BRACS 11.30.12.DBF

# Running the scripts

> **Note:** It is assumed that `sqlite3`, `spatialite_gui` and `spatialite_tool` are installed and available through the command line.

## Steps:

1. Make sure that no `BRAC.sqlite` file exists in your `data/` directory.
2. Run `brac_data_shp_import.sh`:
    * Creates a `BRAC.sqlite` spatialite database.
    * Imports each shapefile to an individual table.
3. Run `brac_data_etl.sh`:
    * Creates the `BRAC_MASTER` and `BRAC_MASTER_WGS84` tables.
    * Inserts all the shapefile records into the `BRAC_MASTER` table.
    * Creates two views to identify duplicate and non-duplicate geometries: `BRAC_with_duplicate_geometries` and `BRAC_with_NO_duplicate_geometries`.
    * Reprojects all records from `BRAC_MASTER` to WGS84 and inserts them into `BRAC_MASTER_WGS84`.
