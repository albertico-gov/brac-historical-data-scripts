/* create_brac_duplicate_views.sql */

DROP VIEW IF EXISTS BRAC_with_duplicate_geometries;
CREATE VIEW BRAC_with_duplicate_geometries AS
SELECT *
FROM BRAC_MASTER bm
JOIN (SELECT geom, COUNT(*) duplicate_count FROM BRAC_MASTER GROUP BY geom HAVING duplicate_count > 1) bm_dup
ON bm.geom = bm_dup.geom
ORDER BY bm.geom, bm.TBL_SHP_SOURCE;

DROP VIEW IF EXISTS BRAC_with_no_duplicate_geometries;
CREATE VIEW BRAC_with_NO_duplicate_geometries AS
SELECT *
FROM BRAC_MASTER
WHERE PK_UID NOT IN (SELECT PK_UID FROM BRAC_with_duplicate_geometries)
ORDER BY FAC_NAME;
