
--display customer name and total amount paid (formatted as currency)
SELECT customers.customer_name as Customer, printf("$%.2f",SUM(subscriptions.price_per_month * subscriptions.subscription_length)) AS 'Amount Due'
FROM orders
--Bring in customer name to order table
JOIN customers
    ON customers.customer_id = orders.customer_id
--Bring in subscription data to order table
JOIN subscriptions
    ON orders.subscription_id = subscriptions.subscription_id
--Filter to unpaid fashion magazines
WHERE order_status is 'unpaid' AND description is 'Fashion Magazine'
--Aggregate data by customer name
GROUP BY customers.customer_name;
