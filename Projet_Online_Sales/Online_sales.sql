-- Teste pour savoir si ma table fonctionne ou pas --

SELECT * FROM ventes;

-- 1) Quels produits génèrent le plus de revenue ? --

SELECT product_name, SUM(total_revenue) AS total_revenue
FROM ventes
GROUP BY product_name
ORDER BY total_revenue DESC;

-- 2) Quelle catégorie de produit (product_category) est la plus performante en termes de revenus ? --

SELECT product_category, SUM(total_revenue) AS total_revenue
FROM ventes
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 3) Quelle catégorie de produit vend le plus d'unités (units_sold) ? -- 

SELECT product_category, SUM(units_sold) AS total_units_sold
FROM ventes
GROUP BY product_category
ORDER BY total_units_sold DESC;

-- 4) Quelle région génère le plus de revenus ? --

SELECT region, SUM(total_revenue) AS total_revenue
FROM ventes
GROUP BY region
ORDER BY total_revenue DESC;

-- 5) Quelle région vend le plus d'unités ? --

SELECT region, SUM(units_sold) AS total_units_sold
FROM ventes
GROUP BY region
ORDER BY total_units_sold DESC;

-- 6) Quelle est la méthode de paiement la plus utilisée ? --

SELECT payment_method, COUNT(*) AS payment_count
FROM ventes
GROUP BY payment_method
ORDER BY payment_count DESC;

-- 7) Quelle méthode de paiement génère le plus de revenus ? --

SELECT payment_method, SUM(total_revenue) AS total_revenue
FROM ventes
GROUP BY payment_method
ORDER BY total_revenue DESC;

-- 8) Quels jours (période) ont généré le plus de revenus ? -- 

SELECT période, SUM(total_revenue) AS total_revenue
FROM ventes
GROUP BY période
ORDER BY total_revenue DESC
LIMIT 10;

-- 9) Quelle est la répartition des ventes par mois ? -- 

SELECT EXTRACT(MONTH FROM période) AS month, SUM(total_revenue) AS total_revenue
FROM ventes
GROUP BY month
ORDER BY month;

-- 10) Quels sont les produits les plus vendus dans chaque région ? --

SELECT region, product_name, SUM(units_sold) AS total_units_sold
FROM ventes
GROUP BY region, product_name
ORDER BY region, total_units_sold DESC;

-- 11) Quelles catégories de produits sont les plus populaires par méthode de paiement ? -- 

SELECT payment_method, product_category, SUM(units_sold) AS total_units_sold
FROM ventes
GROUP BY payment_method, product_category
ORDER BY payment_method, total_units_sold DESC;

-- 12) Quels sont les produits les plus vendus pour chaque méthode de paiement, et combien d'unités ont été vendues ? --

SELECT payment_method, product_name, SUM(units_sold) AS total_units_sold
FROM ventes 
GROUP BY payment_method, product_name
ORDER BY payment_method, total_units_sold DESC;


