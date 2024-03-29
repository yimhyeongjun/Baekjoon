SELECT YEAR(SALES_DATE) AS YEAR, MONTH(SALES_DATE) AS MONTH, COUNT(DISTINCT ui.user_id) AS PUCHASED_USERS, ROUND(COUNT(DISTINCT ui.user_id)/(SELECT COUNT(*) FROM USER_INFO WHERE JOINED like '2021%'), 1) AS PUCHASED_RATIO
FROM USER_INFO ui, ONLINE_SALE oi
WHERE ui.user_id = oi.user_id AND JOINED like '2021%'
GROUP BY MONTH
ORDER BY YEAR, MONTH;