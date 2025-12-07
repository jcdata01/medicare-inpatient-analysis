CREATE DATABASE medicare_inpatient_analysis;

USE medicare_inpatient_analysis;

CREATE TABLE inpatient_charges (
    Rndrng_CCN VARCHAR(10),
    Rndrng_Prvdr_Org_Name VARCHAR(255),
    Rndrng_Prvdr_St VARCHAR(255),
    Rndrng_Prvdr_City VARCHAR(100),
    Rndrng_Prvdr_State_Abrvtn VARCHAR(2),
    Rndrng_Prvdr_State_FIPS VARCHAR(2),
    Rndrng_Prvdr_Zip5 VARCHAR(5),
    Rndrng_Prvdr_RUCA VARCHAR(10),
    Rndrng_Prvdr_RUCA_Desc VARCHAR(255),
    DRG_Cd VARCHAR(10),
    DRG_Desc TEXT,
    Tot_Dschrgs INT,
    Avg_Submtd_Cvrd_Chrg DECIMAL(12,2),
    Avg_Tot_Pymt_Amt DECIMAL(12,2),
    Avg_Mdcr_Pymt_Amt DECIMAL(12,2),
    PRIMARY KEY (Rndrng_CCN, DRG_Cd)
);

SELECT COUNT(*) AS total_records FROM inpatient_charges;

SELECT * FROM inpatient_charges LIMIT 10;