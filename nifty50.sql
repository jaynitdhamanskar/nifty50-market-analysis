SELECT * FROM nifty_data;

-- Q1. How has the market performed over time?

SELECT
    month,
    ROUND(AVG(close), 2) AS avg_monthly_close
FROM nifty_data
GROUP BY month
ORDER BY month;


-- Q2. Which periods experienced the highest market volatility?

SELECT
    month,
    ROUND(STDDEV(daily_return_pct), 3) AS monthly_volatility
FROM nifty_data
GROUP BY month
ORDER BY monthly_volatility DESC;

-- Q3. How often does the market move up vs down?

SELECT
    market_direction,
    COUNT(*) AS number_of_days
FROM nifty_data
GROUP BY market_direction;


-- Q4. Which years were the best and worst for investors?

SELECT
    YEAR(date) AS year,
    ROUND(AVG(daily_return_pct), 3) AS avg_daily_return
FROM nifty_data
GROUP BY year
ORDER BY year;


-- Q5. On which days did trading activity peak?

SELECT
    DATE(date),
    volume
FROM nifty_data
ORDER BY volume DESC
LIMIT 10;


-- Q6. Is trading volume higher on market down days?

SELECT
    market_direction,
    ROUND(AVG(volume), 0) AS avg_volume
FROM nifty_data
GROUP BY market_direction;


-- Q7. How strong is the overall market trend?

SELECT
    COUNT(*) AS days_above_moving_avg
FROM nifty_data
WHERE close > ma_7;


-- Q8. Has market volatility increased in recent years?

SELECT
    YEAR(date) AS year,
    ROUND(STDDEV(daily_return_pct), 3) AS yearly_volatility
FROM nifty_data
GROUP BY year
ORDER BY year;