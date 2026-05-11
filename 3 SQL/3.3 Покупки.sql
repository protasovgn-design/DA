SELECT 
    a.client_id
FROM account a
LEFT JOIN transaction t 
    ON a.id = t.account_id
    AND t.transaction_date >= CURRENT_DATE - INTERVAL '1 month'
    AND t.type = 'buy'
GROUP BY 
    a.client_id
HAVING 
    COALESCE(SUM(t.amount), 0) < 5000;
