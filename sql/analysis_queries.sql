-- Total campaigns
SELECT COUNT(*) AS total_campaigns
FROM global_ads_performance_dataset;

-- Total ad spend by platform
SELECT platform,
       SUM(ad_spend) AS total_ad_spend
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY total_ad_spend DESC;

-- Total conversions by platform
SELECT platform,
       SUM(conversions) AS total_conversions
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY total_conversions DESC;

-- Average CTR by platform
SELECT platform,
       AVG(ctr) AS average_ctr
FROM global_ads_performance_dataset
GROUP BY platform
ORDER BY average_ctr DESC;
