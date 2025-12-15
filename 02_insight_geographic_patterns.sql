SELECT 
    Rndrng_Prvdr_State_Abrvtn AS state,
    COUNT(DISTINCT Rndrng_CCN) AS hospital_count,
    SUM(Tot_Dschrgs) AS total_discharges,
    ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS avg_charge,
    ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS avg_payment,
    ROUND(AVG(Avg_Submtd_Cvrd_Chrg - Avg_Tot_Pymt_Amt), 2) AS avg_charge_payment_gap
FROM inpatient_charges
GROUP BY Rndrng_Prvdr_State_Abrvtn
ORDER BY avg_charge DESC
LIMIT 15;