CREATE DATABASE health;
USE health;
SELECT * FROM healthcare;

/* 1. OVERALL NO-SHOW PERFORMANCE */
SELECT 
    COUNT(*) AS total_appointments,
    SUM(No_show_flag) AS total_no_shows,
    ROUND(AVG(No_show_flag) * 100, 2) AS no_show_rate_percentage
FROM healthcare;

/* 2. NO-SHOW RATE BY WAITING BUCKET */
SELECT 
    waiting_bucket,
    COUNT(*) AS total_appointments,
    SUM(No_show_flag) AS total_no_shows,
    ROUND(AVG(No_show_flag) * 100, 2) AS no_show_rate_percentage
FROM healthcare
GROUP BY waiting_bucket
ORDER BY no_show_rate_percentage DESC;

/* 3. NO-SHOW RATE BY AGE GROUP */
SELECT 
    age_group,
    COUNT(*) AS total_appointments,
    SUM(No_show_flag) AS total_no_shows,
    ROUND(AVG(No_show_flag) * 100, 2) AS no_show_rate_percentage
FROM healthcare
GROUP BY age_group
ORDER BY no_show_rate_percentage DESC;

/* 4. SMS REMINDER IMPACT ANALYSIS */
SELECT 
    SMS_received,
    COUNT(*) AS total_appointments,
    SUM(No_show_flag) AS total_no_shows,
    ROUND(AVG(No_show_flag) * 100, 2) AS no_show_rate_percentage
FROM healthcare
GROUP BY SMS_received;

/* 5. GENDER-WISE NO-SHOW ANALYSIS */
SELECT 
    Gender,
    COUNT(*) AS total_appointments,
    SUM(No_show_flag) AS total_no_shows,
    ROUND(AVG(No_show_flag) * 100, 2) AS no_show_rate_percentage
FROM healthcare
GROUP BY Gender;

/* 6. ESTIMATED REVENUE LOSS */
SELECT 
    SUM(No_show_flag) AS total_no_shows,
    SUM(No_show_flag) * 1500 AS estimated_revenue_loss
FROM healthcare;


/* 
   FINAL INSIGHTS & RECOMMENDATIONS

1. Longer waiting periods significantly increase no-show rates.
2. Younger age groups show relatively higher no-show behavior.
3. Patients without SMS reminders have higher no-show percentage.
4. No-shows directly impact hospital revenue.

Recommendation:
• Reduce waiting time.
• Implement automated reminder system.
• Focus follow-up strategy on high-risk patient segments.

 */