create or replace function get_categorias_with_quantity()
returns table (
  id int,
  nombre text,
  cantidad bigint
)
language sql
as $$
  SELECT 
    c.id,
    c.nombre,
    COUNT(p.id) AS cantidad
  FROM categoria c
  LEFT JOIN producto p ON p.categoria_id = c.id
  GROUP BY c.id, c.nombre
  ORDER BY c.id ASC;
$$;