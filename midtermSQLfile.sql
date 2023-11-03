#selecting tables out of sakila to use for data
SELECT * from sakila.rental;
SELECT * from sakila.customer;

#joining dimension tables (customers, payment) to fact table (rental)
SELECT * FROM sakiladata.fact_rental
JOIN sakiladata.dim_customers ON fact_rental.customer_id = sakiladata.dim_customers.customer_id;

SELECT * FROM sakiladata.fact_rental
JOIN sakiladata.dim_payment ON fact_rental.rental_id = dim_payment.rental_id;

# SQL Statement 1, from dim_customers
SELECT * from sakiladata.dim_customers;

#SQL Statement 2, from dim_payment
SELECT * from sakiladata.dim_payment;

#SQL Statement 3, from fact_rental
SELECT * from sakiladata.fact_rental;

#SQL Statement 4, using average for payment amount in dim_payment
SELECT avg(amount) FROM sakiladata.dim_payment;

#SQL Statement 5, finding the latest payment date in dim_payment
SELECT MAX(payment_date) FROM sakiladata.dim_payment;

#SQL Statement 6, count of active accounts grouped by store
SELECT count(active) FROM sakiladata.dim_customers
GROUP BY store_id;