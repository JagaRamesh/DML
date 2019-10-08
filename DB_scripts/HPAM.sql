
/*** HPAM SERVER **********/
SELECT * 
  FROM TDR_STG_HPAM_SRVR_DLY_T
 WHERE SRC_FILENM_TS = (SELECT MAX(SRC_FILENM_TS) FROM TDR_STG_HPAM_SRVR_DLY_T)
 AND UPPER(ASSET_TAG) LIKE 'AM5517254%';
 

/*** HPAM DESKTOP **********/
 SELECT * 
  FROM TDR_STG_HPAM_DSKTP_DLY_T
 WHERE SRC_FILENM_TS = (SELECT MAX(SRC_FILENM_TS) FROM TDR_STG_HPAM_DSKTP_DLY_T)
 AND UPPER(ASSET_TAG) LIKE 'AM5517254%';