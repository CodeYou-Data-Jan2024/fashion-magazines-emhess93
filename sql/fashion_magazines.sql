--join customers table to orders to get customer name
SELECT orders.*, customers.customer_name, subscriptions.*
FROM orders
Left JOIN customers
LEFT JOIN subscriptions
WHERE order_status is 'unpaid' AND description is 'Fashion Magazine';



--multiply subs price with sub length to get total due
--format the total amount as currency with PRINTF()
*/
--Group by Customer and sum the amount due to account for cust with >1 unpaid fashion mag