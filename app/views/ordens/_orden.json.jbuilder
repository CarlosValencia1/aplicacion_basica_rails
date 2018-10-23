json.extract! orden, :id, :producto_id, :cantidad, :precio_venta, :created_at, :updated_at
json.url orden_url(orden, format: :json)
