SELECT ice_cream_id,
    ice_cream_name,
    manufacturer_name
FROM manufacturer,
    ice_cream
WHERE manufacturer.manufacturer_id = ice_cream.manufacturer_id;