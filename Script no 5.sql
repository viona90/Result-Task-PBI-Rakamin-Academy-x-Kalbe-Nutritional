SELECT order_no, purchase_amount, order_date, customer_id, salesman_id
FROM kalbe.dataset_final_project_kn_de;

SELECT *
FROM dataset_final_project_kn_de dfpkd 
WHERE purchase_amount < '100' OR (order_date < '2022-08-25' AND customer_id <= '2001')


