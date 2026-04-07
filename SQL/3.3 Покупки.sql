SELECT
    a.client_id
FROM account a
JOIN transaction t
    ON t.account_id = a.id
WHERE t.transaction_date >= CURRENT_DATE - INTERVAL '1 month'
  AND t.type = 'buy'
GROUP BY a.client_id
HAVING SUM(t.amount) < 5000;
