-- c.- Se requiere un reporte con la cantidad de productos de cada categoría, ordenado de mayor a menor cantidad.
select categories.category_id, categories.category_name, sum(stocks.quantity) from categories inner join products on categories.category_id = products.category_id inner join stocks on stocks.product_id = products.product_id group by categories.category_id order by sum(stocks.quantity) desc;
