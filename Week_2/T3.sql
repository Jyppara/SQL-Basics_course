SELECT ice_cream_id,
    ice_cream_name,
    manufacturing_cost,
    manufacturer_name
FROM ice_cream,
    manufacturer
WHERE manufacturer.manufacturer_id = ice_cream.manufacturer_id
    AND ice_cream.manufacturing_cost > 1.00;