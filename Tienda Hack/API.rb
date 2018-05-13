# {token: rQc1Z6fwq1ma_QVaiJqtDA}
# Ruta para las peticiones: https://hack-stores-api.herokuapp.com
# Obtener tu tienda GET: /stores/23
# Retorna:(ejemplo)
# .      {
#   'store': {
#     'name': 'EPA',
#     'type': 'ferreteria',
#     'products': 4153,
#     'num_items': 1923
#   }
# }
#
# Modificar el nombre de tu tienda:
# PUT: /stores/23
#
# Enviar:
# {
#   'store': {
#     'name': 'Mi nuevo nombre'
#   },
#   'token': 'a867g58fd76sg5s8fdg'
# }
#
# Ver todo tu inventario:
# GET: /inventories
#
# Retorna: todos las productos que tienes en tu inventario
#
# Ver un producto de tu inventario:
# GET: /inventories/21
# Retorna: EL producto que posee la id 21, con los datos necesarios
#
# Crear un producto en tu inventario:
# POST: /inventories/21
# Retorna:
# {'inventory':
#   {
#     'quantity':'3232',
#     'item_attributes':
#       {
#         'name':'algo viejo',
#         'description':'algo mas especificado',
#         'price':'434.23'
#       }
#    },
#   'token':'iawsosertgwe3445bkzw'
# }
#
#
# Editar un producto de tu inventario:(puedes modificar solo un campo, respecta la estructura del json)
# PUT | PATCH: /inventories/21
# Retorna:
# {'inventory':
#   {
#     'quantity':'3232',
#     'item_attributes':
#       {
#         'name':'algo viejo',
#         'description':'algo mas especificado',
#         'price':'434.23'
#       }
#    },
#   'token':'iawsdf435rete5tt5erw'
# }
#
#
# Eliminar un producto de tu inventario:
# DELETE: /inventories/21

require 'rest-client'
require 'JSON'


class API
  @@token = "rQc1Z6fwq1ma_QVaiJqtDA"
  @@api="https://hack-stores-api.herokuapp.com/"
  @@token = "?token=rQc1Z6fwq1ma_QVaiJqtDA"

def obtener_tienda
  JSON.parse(RestClient.get(@@api + @@token))
end

def modificar_nombre_tienda(name)
  RestClient.post @@api + "/stores/23" + @@token, 'name' => name
end

def ver_inventario
  RestClient.get @@api + "/inventories" + @@token
end

def ver_producto(id)
  RestClient.post @@api + "/inventories/" + id.to_s + @@token
end

def crear_producto
  RestClient.post @@api + "/inventories/21" + id.to_s + @@token
end
