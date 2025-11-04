

-- =====================================================
-- 1. TIENDAS 
-- =====================================================

INSERT INTO tiendas (id_tienda, nombre_t, telefono_t, fecha_apertura, estado_t, colonia_t, direccion_t, horario_operacion, tipo_t, descripcion_t) VALUES
('TDA001', 'Abarrotes San Miguel', 5534567890, '2018-03-15 08:00:00', 'CDMX', 'Narvarte', 'Calle Pilares 245', '7:00-22:00', 'Abarrotes', 'Tienda de abarrotes general con variedad de productos'),
('TDA002', 'La Carnicería El Buen Corte', 8181234567, '2019-06-20 09:00:00', 'Nuevo León', 'Centro', 'Av. Juárez 1523, Monterrey', '8:00-20:00', 'Carnicería', 'Carnes frescas, pescados y productos lácteos'),
('TDA003', 'Súper La Esquina', 5545678901, '2020-01-10 07:30:00', 'CDMX', 'Iztapalapa', 'Ermita Iztapalapa 789', '6:00-23:00', 'Miscelánea', 'Tienda de la esquina con lo necesario del día'),
('TDA004', 'Todo para Ti', 4421234567, '2017-11-05 08:00:00', 'Querétaro', 'El Cerrito', 'Blvd. Bernardo Quintana 456', '7:00-21:00', 'Miscelánea', 'Tienda de barrio con productos esenciales'),
('TDA005', 'Mega Abarrotes La Providencia', 3331234567, '2016-08-12 07:00:00', 'Jalisco', 'Providencia', 'Av. Providencia 2345, Guadalajara', '6:00-23:00', 'Abarrotes', 'Abarrotes completos con gran variedad de productos');

-- =====================================================
-- 2. PROVEEDORES 
-- =====================================================

INSERT INTO provedores (id_provedor, nombre_prv, telefono_prv, correo_prv) VALUES
-- Frutas 
('PRV001', 'Frutas Frescas del Valle', 5556781234, 'ventas@frutasdelvalle.mx'),
('PRV002', 'Distribuidora Tropical', 8187654321, 'contacto@tropical.mx'),
('PRV003', 'Frutas Selectas La Huerta', 4428765432, 'pedidos@lahuerta.mx'),

-- Verduras 
('PRV004', 'Verduras Orgánicas del Campo', 5559876543, 'info@organicocampo.mx'),
('PRV005', 'Central de Abastos Distribuidor', 3338765432, 'ventas@centralabasto.mx'),
('PRV006', 'Hortalizas Frescas SA', 5557654321, 'contacto@hortalizas.mx'),
('PRV007', 'Verduras Don José', 4429876543, 'ventas@donjose.mx'),

-- Carnes y Lácteos 
('PRV008', 'Carnes y Lácteos El Rancho', 8189876543, 'pedidos@elrancho.mx'),
('PRV009', 'Productos Lácteos La Vaca Feliz', 4427654321, 'ventas@vacafeliz.mx'),

-- Pescados 
('PRV010', 'Pescados y Mariscos La Costa', 6691234567, 'ventas@lacosta.mx'),

-- Papas y Refrescos 
('PRV011', 'Sabritas Distribuidor Oficial', 5558765432, 'distribuidores@sabritas.mx'),
('PRV012', 'Refrescos y Botanas del Norte', 8188765432, 'ventas@refrescosnorte.mx'),

-- Panes 
('PRV013', 'Panadería Industrial Bimbo', 5559871234, 'clientes@bimbo.mx'),
('PRV014', 'Pan Tradicional La Espiga', 3337654321, 'ventas@laespiga.mx'),

-- Dulces 
('PRV015', 'Dulces y Chocolates Ricolino', 5556782345, 'ventas@ricolino.mx'),
('PRV016', 'Distribuidora de Confitería', 4428761234, 'pedidos@confiteria.mx'),

-- Sopas y Pastas 
('PRV017', 'Alimentos Instantáneos Nissin', 5557893456, 'distribuidores@nissin.mx'),

-- Enlatados 
('PRV018', 'Conservas y Enlatados Herdez', 5558764567, 'ventas@herdez.mx'),
('PRV019', 'Alimentos Procesados Del Monte', 8189875678, 'clientes@delmonte.mx'),
('PRV020', 'Enlatados La Costeña', 5559876789, 'distribuidores@lacostena.mx'),

-- Limpieza 
('PRV021', 'Productos de Limpieza Zote', 3338769012, 'ventas@zote.mx'),
('PRV022', 'Distribuidora de Higiene Total', 4429873456, 'pedidos@higienetotal.mx'),

-- Alcohol y Cerveza (3 proveedores)
('PRV023', 'Distribuidora de Bebidas Modelo', 5558901234, 'ventas@cervezamodelo.mx'),
('PRV024', 'Licores y Vinos del Valle', 3338901234, 'contacto@licoresvalle.mx'),
('PRV025', 'Cervecería Cuauhtémoc Moctezuma', 8188901234, 'distribuidores@cervezacm.mx'),

-- Tabaco (2 proveedores)
('PRV026', 'Cigarrera La Moderna', 5559012345, 'ventas@cigarrera.mx'),
('PRV027', 'Distribuidora de Tabacos Premium', 3339012345, 'pedidos@tabacospremium.mx'),

-- Galletas y Pastelitos (2 proveedores)
('PRV028', 'Gamesa Productos', 5559123456, 'clientes@gamesa.mx'),
('PRV029', 'Marinela Bimbo', 5559234567, 'distribuidores@marinela.mx'),

-- Frituras adicionales (1 proveedor)
('PRV030', 'Barcel Productos', 5559345678, 'ventas@barcel.mx');

-- =====================================================
-- 3. PRODUCTOS 
-- =====================================================

-- FRUTAS (20)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD001', 'Manzana Golden', 'Manzana golden dulce kg', 'Frutas'),
('PROD002', 'Manzana Roja', 'Manzana roja kg', 'Frutas'),
('PROD003', 'Plátano Tabasco', 'Plátano fresco kg', 'Frutas'),
('PROD004', 'Naranja Valencia', 'Naranja para jugo kg', 'Frutas'),
('PROD005', 'Mandarina', 'Mandarina sin semilla kg', 'Frutas'),
('PROD006', 'Uva Verde', 'Uva verde sin semilla kg', 'Frutas'),
('PROD007', 'Uva Roja', 'Uva roja dulce kg', 'Frutas'),
('PROD008', 'Papaya Maradol', 'Papaya fresca kg', 'Frutas'),
('PROD009', 'Sandía', 'Sandía roja kg', 'Frutas'),
('PROD010', 'Melón', 'Melón chino kg', 'Frutas'),
('PROD011', 'Piña', 'Piña miel kg', 'Frutas'),
('PROD012', 'Mango Manila', 'Mango manila kg', 'Frutas'),
('PROD013', 'Mango Ataulfo', 'Mango ataulfo kg', 'Frutas'),
('PROD014', 'Fresa', 'Fresa fresca 250g', 'Frutas'),
('PROD015', 'Pera Bosc', 'Pera fresca kg', 'Frutas'),
('PROD016', 'Durazno', 'Durazno prisco kg', 'Frutas'),
('PROD017', 'Limón', 'Limón verde kg', 'Frutas'),
('PROD018', 'Toronja', 'Toronja roja kg', 'Frutas'),
('PROD019', 'Guayaba', 'Guayaba blanca kg', 'Frutas'),
('PROD020', 'Kiwi', 'Kiwi importado kg', 'Frutas');

-- VERDURAS (25)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD021', 'Jitomate Bola', 'Jitomate rojo kg', 'Verduras'),
('PROD022', 'Jitomate Saladette', 'Jitomate saladette kg', 'Verduras'),
('PROD023', 'Cebolla Blanca', 'Cebolla blanca kg', 'Verduras'),
('PROD024', 'Cebolla Morada', 'Cebolla morada kg', 'Verduras'),
('PROD025', 'Papa Blanca', 'Papa alpha kg', 'Verduras'),
('PROD026', 'Zanahoria', 'Zanahoria fresca kg', 'Verduras'),
('PROD027', 'Lechuga Romana', 'Lechuga fresca pza', 'Verduras'),
('PROD028', 'Lechuga Orejona', 'Lechuga orejona pza', 'Verduras'),
('PROD029', 'Espinaca', 'Espinaca fresca manojo', 'Verduras'),
('PROD030', 'Brócoli', 'Brócoli fresco kg', 'Verduras'),
('PROD031', 'Coliflor', 'Coliflor blanca kg', 'Verduras'),
('PROD032', 'Calabacita', 'Calabacita italiana kg', 'Verduras'),
('PROD033', 'Chayote', 'Chayote verde kg', 'Verduras'),
('PROD034', 'Chile Jalapeño', 'Chile jalapeño kg', 'Verduras'),
('PROD035', 'Chile Serrano', 'Chile serrano kg', 'Verduras'),
('PROD036', 'Chile Poblano', 'Chile poblano kg', 'Verduras'),
('PROD037', 'Aguacate Hass', 'Aguacate hass kg', 'Verduras'),
('PROD038', 'Elote', 'Elote blanco pza', 'Verduras'),
('PROD039', 'Cilantro', 'Cilantro fresco manojo', 'Verduras'),
('PROD040', 'Perejil', 'Perejil fresco manojo', 'Verduras'),
('PROD041', 'Apio', 'Apio fresco manojo', 'Verduras'),
('PROD042', 'Chícharo', 'Chícharo verde kg', 'Verduras'),
('PROD043', 'Ejote', 'Ejote verde kg', 'Verduras'),
('PROD044', 'Betabel', 'Betabel rojo kg', 'Verduras'),
('PROD045', 'Pepino', 'Pepino verde kg', 'Verduras');

-- CARNES (15)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD046', 'Bistec de Res', 'Bistec de res kg', 'Carnes'),
('PROD047', 'Carne Molida', 'Carne molida res kg', 'Carnes'),
('PROD048', 'Costilla de Res', 'Costilla de res kg', 'Carnes'),
('PROD049', 'Arrachera', 'Arrachera de res kg', 'Carnes'),
('PROD050', 'Chuleta de Cerdo', 'Chuleta de cerdo kg', 'Carnes'),
('PROD051', 'Costilla de Cerdo', 'Costilla de cerdo kg', 'Carnes'),
('PROD052', 'Pierna de Cerdo', 'Pierna de cerdo kg', 'Carnes'),
('PROD053', 'Pechuga de Pollo', 'Pechuga sin hueso kg', 'Carnes'),
('PROD054', 'Muslo de Pollo', 'Muslo con hueso kg', 'Carnes'),
('PROD055', 'Pierna de Pollo', 'Pierna con hueso kg', 'Carnes'),
('PROD056', 'Pollo Entero', 'Pollo entero kg', 'Carnes'),
('PROD057', 'Chorizo', 'Chorizo rojo kg', 'Carnes'),
('PROD058', 'Longaniza', 'Longaniza kg', 'Carnes'),
('PROD059', 'Salchicha', 'Salchicha de pavo kg', 'Carnes'),
('PROD060', 'Jamón', 'Jamón de pierna kg', 'Carnes');

-- PESCADOS Y MARISCOS (10)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD061', 'Filete de Tilapia', 'Filete tilapia kg', 'Pescados'),
('PROD062', 'Filete de Salmón', 'Filete salmón kg', 'Pescados'),
('PROD063', 'Mojarra', 'Mojarra fresca kg', 'Pescados'),
('PROD064', 'Robalo', 'Robalo fresco kg', 'Pescados'),
('PROD065', 'Camarón', 'Camarón mediano kg', 'Pescados'),
('PROD066', 'Camarón Jumbo', 'Camarón jumbo kg', 'Pescados'),
('PROD067', 'Pulpo', 'Pulpo limpio kg', 'Pescados'),
('PROD068', 'Calamar', 'Calamar fresco kg', 'Pescados'),
('PROD069', 'Atún Fresco', 'Atún aleta amarilla kg', 'Pescados'),
('PROD070', 'Huachinango', 'Huachinango entero kg', 'Pescados');

-- LÁCTEOS (12)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD071', 'Leche Entera', 'Leche entera 1L', 'Lácteos'),
('PROD072', 'Leche Deslactosada', 'Leche deslactosada 1L', 'Lácteos'),
('PROD073', 'Yogurt Natural', 'Yogurt natural 1L', 'Lácteos'),
('PROD074', 'Yogurt de Fresa', 'Yogurt fresa 1L', 'Lácteos'),
('PROD075', 'Queso Panela', 'Queso panela 400g', 'Lácteos'),
('PROD076', 'Queso Oaxaca', 'Queso oaxaca 400g', 'Lácteos'),
('PROD077', 'Queso Manchego', 'Queso manchego 400g', 'Lácteos'),
('PROD078', 'Crema', 'Crema ácida 500ml', 'Lácteos'),
('PROD079', 'Mantequilla', 'Mantequilla 200g', 'Lácteos'),
('PROD080', 'Queso Crema', 'Queso crema 150g', 'Lácteos'),
('PROD081', 'Huevo Blanco', 'Huevo blanco 12pz', 'Lácteos'),
('PROD082', 'Huevo Rojo', 'Huevo rojo 12pz', 'Lácteos');

-- PAPAS Y SNACKS (15)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD083', 'Sabritas Clásicas', 'Papas 170g', 'Botanas'),
('PROD084', 'Sabritas Adobadas', 'Papas adobadas 170g', 'Botanas'),
('PROD085', 'Ruffles Queso', 'Papas ruffles 180g', 'Botanas'),
('PROD086', 'Doritos Nacho', 'Doritos nacho 200g', 'Botanas'),
('PROD087', 'Cheetos Torciditos', 'Cheetos 150g', 'Botanas'),
('PROD088', 'Takis Fuego', 'Takis fuego 150g', 'Botanas'),
('PROD089', 'Tostitos Salsa Verde', 'Tostitos 200g', 'Botanas'),
('PROD090', 'Cacahuates Japonés', 'Cacahuates 200g', 'Botanas'),
('PROD091', 'Nuez de la India', 'Nuez india 150g', 'Botanas'),
('PROD092', 'Palomitas', 'Palomitas mantequilla 100g', 'Botanas'),
('PROD093', 'Chicharrón', 'Chicharrón 100g', 'Botanas'),
('PROD094', 'Cacahuates Salados', 'Cacahuates 250g', 'Botanas'),
('PROD095', 'Almendras', 'Almendras 200g', 'Botanas'),
('PROD096', 'Pistaches', 'Pistaches 150g', 'Botanas'),
('PROD097', 'Gomitas Enchiladas', 'Gomitas 120g', 'Botanas');

-- REFRESCOS (10)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD098', 'Coca-Cola', 'Refresco 600ml', 'Bebidas'),
('PROD099', 'Coca-Cola 2L', 'Refresco 2L', 'Bebidas'),
('PROD100', 'Pepsi', 'Refresco 600ml', 'Bebidas'),
('PROD101', 'Sprite', 'Refresco 600ml', 'Bebidas'),
('PROD102', 'Fanta Naranja', 'Refresco 600ml', 'Bebidas'),
('PROD103', 'Agua Ciel', 'Agua natural 1L', 'Bebidas'),
('PROD104', 'Jugodel Valle Naranja', 'Jugo 1L', 'Bebidas'),
('PROD105', 'Jugodel Valle Manzana', 'Jugo 1L', 'Bebidas'),
('PROD106', 'Jumex Durazno', 'Néctar 1L', 'Bebidas'),
('PROD107', 'Electropura', 'Suero 1L', 'Bebidas');

-- PANES (12)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD108', 'Pan Blanco Bimbo', 'Pan caja 680g', 'Panadería'),
('PROD109', 'Pan Integral', 'Pan integral 680g', 'Panadería'),
('PROD110', 'Bolillos', 'Bolillo 5pz', 'Panadería'),
('PROD111', 'Telera', 'Telera 5pz', 'Panadería'),
('PROD112', 'Pan Dulce Surtido', 'Pan dulce kg', 'Panadería'),
('PROD113', 'Concha Chocolate', 'Concha 5pz', 'Panadería'),
('PROD114', 'Dona Glaseada', 'Dona 4pz', 'Panadería'),
('PROD115', 'Mantecadas', 'Mantecadas 4pz', 'Panadería'),
('PROD116', 'Roles de Canela', 'Roles 6pz', 'Panadería'),
('PROD117', 'Tortillas Maíz', 'Tortillas 1kg', 'Panadería'),
('PROD118', 'Tortillas Harina', 'Tortillas 500g', 'Panadería'),
('PROD119', 'Tostadas', 'Tostadas 20pz', 'Panadería');

-- DULCES (15)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD120', 'Carlos V', 'Chocolate 18g', 'Dulces'),
('PROD121', 'Milky Way', 'Chocolate 58g', 'Dulces'),
('PROD122', 'Snickers', 'Chocolate 52g', 'Dulces'),
('PROD123', 'Kit Kat', 'Chocolate 45g', 'Dulces'),
('PROD124', 'M&M Cacahuate', 'Chocolate 47g', 'Dulces'),
('PROD125', 'Skittles', 'Dulce 61g', 'Dulces'),
('PROD126', 'Panditas', 'Gomitas 120g', 'Dulces'),
('PROD127', 'Rockaleta', 'Paleta 40g', 'Dulces'),
('PROD128', 'Pelón Pelo Rico', 'Tamarindo 30g', 'Dulces'),
('PROD129', 'Pulparindo', 'Tamarindo 14g', 'Dulces'),
('PROD130', 'Lucas Muecas', 'Dulce enchilado 10g', 'Dulces'),
('PROD131', 'Vero Mango', 'Paleta mango 15g', 'Dulces'),
('PROD132', 'Mazapán', 'Mazapán 30g', 'Dulces'),
('PROD133', 'Duvalin', 'Crema 18g', 'Dulces'),
('PROD134', 'Lunetas', 'Chocolate 45g', 'Dulces');

-- SOPAS Y PASTAS (12)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD135', 'Maruchan Pollo', 'Sopa instantánea 85g', 'Despensa'),
('PROD136', 'Maruchan Res', 'Sopa instantánea 85g', 'Despensa'),
('PROD137', 'Maruchan Camarón', 'Sopa instantánea 85g', 'Despensa'),
('PROD138', 'Knorr Pasta Alfredo', 'Pasta instantánea 120g', 'Despensa'),
('PROD139', 'Pasta Espagueti', 'Pasta 200g', 'Despensa'),
('PROD140', 'Pasta Codito', 'Pasta 200g', 'Despensa'),
('PROD141', 'Sopa Nissin Res', 'Sopa vaso 64g', 'Despensa'),
('PROD142', 'Arroz Verde Valle', 'Arroz 900g', 'Despensa'),
('PROD143', 'Frijol Negro', 'Frijol 900g', 'Despensa'),
('PROD144', 'Frijol Pinto', 'Frijol 900g', 'Despensa'),
('PROD145', 'Lentejas', 'Lentejas 500g', 'Despensa'),
('PROD146', 'Avena', 'Avena 400g', 'Despensa');

-- ENLATADOS (15)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD147', 'Atún Herdez Agua', 'Atún lata 140g', 'Enlatados'),
('PROD148', 'Atún Herdez Aceite', 'Atún lata 140g', 'Enlatados'),
('PROD149', 'Sardina Tomate', 'Sardina lata 425g', 'Enlatados'),
('PROD150', 'Chiles Jalapeños', 'Chiles lata 380g', 'Enlatados'),
('PROD151', 'Elote Entero', 'Elote lata 410g', 'Enlatados'),
('PROD152', 'Frijoles Refritos', 'Frijol lata 430g', 'Enlatados'),
('PROD153', 'Chícharos', 'Chícharos lata 410g', 'Enlatados'),
('PROD154', 'Champiñones', 'Champiñones lata 380g', 'Enlatados'),
('PROD155', 'Salsa Verde', 'Salsa lata 210g', 'Enlatados'),
('PROD156', 'Salsa Roja', 'Salsa lata 210g', 'Enlatados'),
('PROD157', 'Puré de Tomate', 'Puré lata 210g', 'Enlatados'),
('PROD158', 'Jugo de Tomate', 'Jugo lata 340ml', 'Enlatados'),
('PROD159', 'Durazno en Almíbar', 'Durazno lata 820g', 'Enlatados'),
('PROD160', 'Piña en Almíbar', 'Piña lata 560g', 'Enlatados'),
('PROD161', 'Coctel de Frutas', 'Coctel lata 820g', 'Enlatados');

-- PRODUCTOS DE LIMPIEZA (15)
INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD162', 'Jabón Zote Rosa', 'Jabón barra 200g', 'Limpieza'),
('PROD163', 'Jabón Roma', 'Jabón barra 125g', 'Limpieza'),
('PROD164', 'Detergente Ace', 'Detergente 1kg', 'Limpieza'),
('PROD165', 'Detergente Ariel', 'Detergente 850g', 'Limpieza'),
('PROD166', 'Suavitel Completo', 'Suavizante 850ml', 'Limpieza'),
('PROD167', 'Cloro Cloralex', 'Cloro 1L', 'Limpieza'),
('PROD168', 'Pinol', 'Limpiador 1L', 'Limpieza'),
('PROD169', 'Fabuloso Lavanda', 'Limpiador 1L', 'Limpieza'),
('PROD170', 'Ajax Crema', 'Limpiador 500g', 'Limpieza'),
('PROD171', 'Papel Higiénico Pétalo', 'Papel 4 rollos', 'Limpieza'),
('PROD172', 'Servilletas', 'Servilletas 100pz', 'Limpieza'),
('PROD173', 'Shampoo Ego', 'Shampoo 750ml', 'Limpieza'),
('PROD174', 'Jabón Líquido Palmolive', 'Jabón manos 221ml', 'Limpieza'),
('PROD175', 'Pasta Dental Colgate', 'Pasta 75ml', 'Limpieza'),
('PROD176', 'Escobas', 'Escoba plástico', 'Limpieza');

INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
-- Cervezas (12 productos)
('PROD177', 'Corona Extra', 'Cerveza 355ml', 'Alcohol'),
('PROD178', 'Corona Familiar', 'Cerveza 940ml', 'Alcohol'),
('PROD179', 'Modelo Especial', 'Cerveza 355ml', 'Alcohol'),
('PROD180', 'Modelo Especial 12pk', 'Cerveza 355ml 12 pack', 'Alcohol'),
('PROD181', 'Victoria', 'Cerveza 355ml', 'Alcohol'),
('PROD182', 'Tecate Roja', 'Cerveza 355ml', 'Alcohol'),
('PROD183', 'Tecate Light', 'Cerveza 355ml', 'Alcohol'),
('PROD184', 'Indio', 'Cerveza 355ml', 'Alcohol'),
('PROD185', 'Carta Blanca', 'Cerveza 355ml', 'Alcohol'),
('PROD186', 'Sol', 'Cerveza 355ml', 'Alcohol'),
('PROD187', 'XX Lager', 'Cerveza 355ml', 'Alcohol'),
('PROD188', 'Heineken', 'Cerveza 355ml', 'Alcohol'),

-- Destilados (5 productos)
('PROD189', 'Tequila Jimador Blanco', 'Tequila 700ml', 'Alcohol'),
('PROD190', 'Tequila Jimador Reposado', 'Tequila 700ml', 'Alcohol'),
('PROD191', 'Ron Bacardi Blanco', 'Ron 750ml', 'Alcohol'),
('PROD192', 'Vodka Smirnoff', 'Vodka 750ml', 'Alcohol'),
('PROD193', 'Brandy Don Pedro', 'Brandy 750ml', 'Alcohol'),

-- Vinos (3 productos)
('PROD194', 'Vino Tinto LA Cetto', 'Vino tinto 750ml', 'Alcohol'),
('PROD195', 'Vino Blanco LA Cetto', 'Vino blanco 750ml', 'Alcohol'),
('PROD196', 'Vino Rosado Santo Tomás', 'Vino rosado 750ml', 'Alcohol');


-- TABACO (10 productos)

INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD197', 'Marlboro Rojo', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD198', 'Marlboro Gold', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD199', 'Camel', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD200', 'Delicados', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD201', 'Benson & Hedges', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD202', 'Lucky Strike', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD203', 'Pall Mall', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD204', 'Montana', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD205', 'Boots', 'Cigarros cajetilla 20pz', 'Tabaco'),
('PROD206', 'Viceroy', 'Cigarros cajetilla 20pz', 'Tabaco');

-- GALLETAS Y PASTELITOS (15 productos)

INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
-- Galletas (8 productos)
('PROD207', 'Galletas Marías Gamesa', 'Galletas 200g', 'Galletas'),
('PROD208', 'Principe Chocolate', 'Galletas 135g', 'Galletas'),
('PROD209', 'Chokis', 'Galletas chocolate 128g', 'Galletas'),
('PROD210', 'Emperador Chocolate', 'Galletas 200g', 'Galletas'),
('PROD211', 'Oreo', 'Galletas 154g', 'Galletas'),
('PROD212', 'Arcoiris', 'Galletas 200g', 'Galletas'),
('PROD213', 'Canelitas', 'Galletas canela 200g', 'Galletas'),
('PROD214', 'Surtido Rico Gamesa', 'Galletas surtidas 300g', 'Galletas'),

-- Pastelitos (7 productos)
('PROD215', 'Gansito Marinela', 'Pastelito 50g', 'Pastelitos'),
('PROD216', 'Pingüinos Marinela', 'Pastelito 70g', 'Pastelitos'),
('PROD217', 'Barritas Marinela', 'Pastelito 60g', 'Pastelitos'),
('PROD218', 'Choco Roles', 'Pastelito 58g', 'Pastelitos'),
('PROD219', 'Submarinos', 'Pastelito 50g', 'Pastelitos'),
('PROD220', 'Suavicremas', 'Pastelito 65g', 'Pastelitos'),
('PROD221', 'Panqué Marmoleado', 'Panqué 250g', 'Pastelitos');


-- FRITURAS ADICIONALES (10 productos)


INSERT INTO productos (id_producto, nombre_prd, descripcion_prd, categoria) VALUES
('PROD222', 'Rancheritos', 'Botana 62g', 'Botanas'),
('PROD223', 'Churrumais', 'Botana 62g', 'Botanas'),
('PROD224', 'Crujitos', 'Botana 65g', 'Botanas'),
('PROD225', 'Hot Nuts', 'Cacahuates enchilados 50g', 'Botanas'),
('PROD226', 'Runners', 'Cacahuates 50g', 'Botanas'),
('PROD227', 'Chips Jalapeño', 'Papas 170g', 'Botanas'),
('PROD228', 'Chips Fuego', 'Papas 170g', 'Botanas'),
('PROD229', 'Poffets', 'Botana 40g', 'Botanas'),
('PROD230', 'Trikitrakes', 'Botana 60g', 'Botanas'),
('PROD231', 'Sabritones', 'Botana 62g', 'Botanas');

-- =====================================================
-- 4. EMPLEADOS (15)
-- =====================================================

INSERT INTO empleados (id_empleado, id_tienda, nombre_emp, puesto, salario, curp, telefono_emp, correo_emp) VALUES
-- Abarrotes San Miguel (TDA001)
('EMP001', 'TDA001', 'Juan Carlos Pérez López', 'Gerente', 12000, 'PELJ850315HDFRZN01', 5534567801, 'jperez@email.com'),
('EMP002', 'TDA001', 'María Guadalupe Santos', 'Cajera', 7500, 'SAMG900520MDFNTR02', 5534567802, 'msantos@email.com'),
('EMP003', 'TDA001', 'Roberto Martínez Cruz', 'Almacenista', 8000, 'MACR880712HDFRRT03', 5534567803, 'rmartinez@email.com'),

-- La Carnicería El Buen Corte (TDA002)
('EMP004', 'TDA002', 'Fernando Rodríguez Garza', 'Gerente', 13000, 'ROGF870225HNLDRN04', 8181234568, 'frodriguez@email.com'),
('EMP005', 'TDA002', 'Laura Patricia Flores', 'Carnicera', 9500, 'FOPL920815MNLLRL05', 8181234569, 'lflores@email.com'),
('EMP006', 'TDA002', 'José Luis Treviño', 'Pescadero', 9000, 'TEJL891104HNLRVS06', 8181234570, 'jtrevino@email.com'),

-- Súper La Esquina (TDA003)
('EMP007', 'TDA003', 'Ana María Hernández', 'Encargada', 9500, 'HEAM930618MDFRRN07', 5545678902, 'ahernandez@email.com'),
('EMP008', 'TDA003', 'Pedro Ramírez Soto', 'Cajero', 7000, 'RASP950420HDFMTD08', 5545678903, 'pramirez@email.com'),

-- Todo para Ti (TDA004)
('EMP009', 'TDA004', 'Carmen Jiménez Robles', 'Encargada', 15000, 'JIRC750908MQRMRR09', 4421234568, 'cjimenez@email.com'),
('EMP010', 'TDA004', 'Miguel Ángel Vargas', 'Cajero', 7200, 'VAMM960325HQTRGL10', 4421234569, 'mvargas@email.com'),
('EMP011', 'TDA004', 'Sofía Méndez Torres', 'Ayudante', 6500, 'METS980715MQRNFF11', 4421234570, 'smendez@email.com'),

-- Mega Abarrotes La Providencia (TDA005)
('EMP012', 'TDA005', 'Ricardo González Ochoa', 'Gerente', 14000, 'GOOR820430HJCLCR12', 3331234568, 'rgonzalez@email.com'),
('EMP013', 'TDA005', 'Gabriela Ruiz Mora', 'Cajero', 7800, 'RUMG880922MJCZRB13', 3331234569, 'gruiz@email.com'),
('EMP014', 'TDA005', 'Diego Castillo Vega', 'Cajero', 7800, 'CAVD940605HJCSGD14', 3331234570, 'dcastillo@email.com'),
('EMP015', 'TDA005', 'Verónica López Salazar', 'Almacenista', 8200, 'LOSV911210MJCPLR15', 3331234571, 'vlopez@email.com');

-- =====================================================
-- 5. PRODUCTO_TIENDA (Relación Productos-Tiendas-Proveedores)
-- =====================================================

-- ABARROTES SAN MIGUEL (TDA001) - Vende casi todo
-- Frutas (20 productos)
INSERT INTO producto_tienda (id_particular, id_tienda, id_producto, id_provedor) VALUES
('PT001', 'TDA001', 'PROD001', 'PRV001'), ('PT002', 'TDA001', 'PROD002', 'PRV001'),
('PT003', 'TDA001', 'PROD003', 'PRV002'), ('PT004', 'TDA001', 'PROD004', 'PRV002'),
('PT005', 'TDA001', 'PROD005', 'PRV002'), ('PT006', 'TDA001', 'PROD006', 'PRV001'),
('PT007', 'TDA001', 'PROD007', 'PRV001'), ('PT008', 'TDA001', 'PROD008', 'PRV003'),
('PT009', 'TDA001', 'PROD009', 'PRV003'), ('PT010', 'TDA001', 'PROD010', 'PRV003'),
('PT011', 'TDA001', 'PROD011', 'PRV002'), ('PT012', 'TDA001', 'PROD012', 'PRV003'),
('PT013', 'TDA001', 'PROD013', 'PRV003'), ('PT014', 'TDA001', 'PROD014', 'PRV001'),
('PT015', 'TDA001', 'PROD015', 'PRV001'), ('PT016', 'TDA001', 'PROD016', 'PRV002'),
('PT017', 'TDA001', 'PROD017', 'PRV002'), ('PT018', 'TDA001', 'PROD018', 'PRV001'),
('PT019', 'TDA001', 'PROD019', 'PRV003'), ('PT020', 'TDA001', 'PROD020', 'PRV001'),

-- Verduras (25 productos)
('PT021', 'TDA001', 'PROD021', 'PRV004'), ('PT022', 'TDA001', 'PROD022', 'PRV005'),
('PT023', 'TDA001', 'PROD023', 'PRV004'), ('PT024', 'TDA001', 'PROD024', 'PRV005'),
('PT025', 'TDA001', 'PROD025', 'PRV006'), ('PT026', 'TDA001', 'PROD026', 'PRV004'),
('PT027', 'TDA001', 'PROD027', 'PRV005'), ('PT028', 'TDA001', 'PROD028', 'PRV005'),
('PT029', 'TDA001', 'PROD029', 'PRV007'), ('PT030', 'TDA001', 'PROD030', 'PRV006'),
('PT031', 'TDA001', 'PROD031', 'PRV006'), ('PT032', 'TDA001', 'PROD032', 'PRV007'),
('PT033', 'TDA001', 'PROD033', 'PRV004'), ('PT034', 'TDA001', 'PROD034', 'PRV007'),
('PT035', 'TDA001', 'PROD035', 'PRV007'), ('PT036', 'TDA001', 'PROD036', 'PRV005'),
('PT037', 'TDA001', 'PROD037', 'PRV005'), ('PT038', 'TDA001', 'PROD038', 'PRV006'),
('PT039', 'TDA001', 'PROD039', 'PRV004'), ('PT040', 'TDA001', 'PROD040', 'PRV004'),
('PT041', 'TDA001', 'PROD041', 'PRV007'), ('PT042', 'TDA001', 'PROD042', 'PRV006'),
('PT043', 'TDA001', 'PROD043', 'PRV006'), ('PT044', 'TDA001', 'PROD044', 'PRV004'),
('PT045', 'TDA001', 'PROD045', 'PRV005'),

-- Lácteos (12 productos)
('PT071', 'TDA001', 'PROD071', 'PRV009'), ('PT072', 'TDA001', 'PROD072', 'PRV009'),
('PT073', 'TDA001', 'PROD073', 'PRV009'), ('PT074', 'TDA001', 'PROD074', 'PRV009'),
('PT075', 'TDA001', 'PROD075', 'PRV009'), ('PT076', 'TDA001', 'PROD076', 'PRV009'),
('PT077', 'TDA001', 'PROD077', 'PRV009'), ('PT078', 'TDA001', 'PROD078', 'PRV009'),
('PT079', 'TDA001', 'PROD079', 'PRV009'), ('PT080', 'TDA001', 'PROD080', 'PRV009'),
('PT081', 'TDA001', 'PROD081', 'PRV009'), ('PT082', 'TDA001', 'PROD082', 'PRV009'),

-- Botanas (15 productos)
('PT083', 'TDA001', 'PROD083', 'PRV011'), ('PT084', 'TDA001', 'PROD084', 'PRV011'),
('PT085', 'TDA001', 'PROD085', 'PRV011'), ('PT086', 'TDA001', 'PROD086', 'PRV011'),
('PT087', 'TDA001', 'PROD087', 'PRV011'), ('PT088', 'TDA001', 'PROD088', 'PRV012'),
('PT089', 'TDA001', 'PROD089', 'PRV011'), ('PT090', 'TDA001', 'PROD090', 'PRV012'),
('PT091', 'TDA001', 'PROD091', 'PRV012'), ('PT092', 'TDA001', 'PROD092', 'PRV012'),
('PT093', 'TDA001', 'PROD093', 'PRV012'), ('PT094', 'TDA001', 'PROD094', 'PRV012'),
('PT095', 'TDA001', 'PROD095', 'PRV012'), ('PT096', 'TDA001', 'PROD096', 'PRV012'),
('PT097', 'TDA001', 'PROD097', 'PRV012'),

-- Bebidas (10 productos)
('PT098', 'TDA001', 'PROD098', 'PRV012'), ('PT099', 'TDA001', 'PROD099', 'PRV012'),
('PT100', 'TDA001', 'PROD100', 'PRV012'), ('PT101', 'TDA001', 'PROD101', 'PRV012'),
('PT102', 'TDA001', 'PROD102', 'PRV012'), ('PT103', 'TDA001', 'PROD103', 'PRV012'),
('PT104', 'TDA001', 'PROD104', 'PRV012'), ('PT105', 'TDA001', 'PROD105', 'PRV012'),
('PT106', 'TDA001', 'PROD106', 'PRV012'), ('PT107', 'TDA001', 'PROD107', 'PRV012'),

-- Panadería (12 productos)
('PT108', 'TDA001', 'PROD108', 'PRV013'), ('PT109', 'TDA001', 'PROD109', 'PRV013'),
('PT110', 'TDA001', 'PROD110', 'PRV014'), ('PT111', 'TDA001', 'PROD111', 'PRV014'),
('PT112', 'TDA001', 'PROD112', 'PRV014'), ('PT113', 'TDA001', 'PROD113', 'PRV014'),
('PT114', 'TDA001', 'PROD114', 'PRV013'), ('PT115', 'TDA001', 'PROD115', 'PRV013'),
('PT116', 'TDA001', 'PROD116', 'PRV014'), ('PT117', 'TDA001', 'PROD117', 'PRV014'),
('PT118', 'TDA001', 'PROD118', 'PRV014'), ('PT119', 'TDA001', 'PROD119', 'PRV013'),

-- Dulces (15 productos)
('PT120', 'TDA001', 'PROD120', 'PRV015'), ('PT121', 'TDA001', 'PROD121', 'PRV015'),
('PT122', 'TDA001', 'PROD122', 'PRV015'), ('PT123', 'TDA001', 'PROD123', 'PRV015'),
('PT124', 'TDA001', 'PROD124', 'PRV015'), ('PT125', 'TDA001', 'PROD125', 'PRV016'),
('PT126', 'TDA001', 'PROD126', 'PRV016'), ('PT127', 'TDA001', 'PROD127', 'PRV016'),
('PT128', 'TDA001', 'PROD128', 'PRV016'), ('PT129', 'TDA001', 'PROD129', 'PRV016'),
('PT130', 'TDA001', 'PROD130', 'PRV016'), ('PT131', 'TDA001', 'PROD131', 'PRV016'),
('PT132', 'TDA001', 'PROD132', 'PRV015'), ('PT133', 'TDA001', 'PROD133', 'PRV015'),
('PT134', 'TDA001', 'PROD134', 'PRV015'),

-- Despensa (12 productos)
('PT135', 'TDA001', 'PROD135', 'PRV017'), ('PT136', 'TDA001', 'PROD136', 'PRV017'),
('PT137', 'TDA001', 'PROD137', 'PRV017'), ('PT138', 'TDA001', 'PROD138', 'PRV017'),
('PT139', 'TDA001', 'PROD139', 'PRV017'), ('PT140', 'TDA001', 'PROD140', 'PRV017'),
('PT141', 'TDA001', 'PROD141', 'PRV017'), ('PT142', 'TDA001', 'PROD142', 'PRV017'),
('PT143', 'TDA001', 'PROD143', 'PRV017'), ('PT144', 'TDA001', 'PROD144', 'PRV017'),
('PT145', 'TDA001', 'PROD145', 'PRV017'), ('PT146', 'TDA001', 'PROD146', 'PRV017'),

-- Enlatados (15 productos)
('PT147', 'TDA001', 'PROD147', 'PRV018'), ('PT148', 'TDA001', 'PROD148', 'PRV018'),
('PT149', 'TDA001', 'PROD149', 'PRV019'), ('PT150', 'TDA001', 'PROD150', 'PRV020'),
('PT151', 'TDA001', 'PROD151', 'PRV020'), ('PT152', 'TDA001', 'PROD152', 'PRV020'),
('PT153', 'TDA001', 'PROD153', 'PRV019'), ('PT154', 'TDA001', 'PROD154', 'PRV019'),
('PT155', 'TDA001', 'PROD155', 'PRV020'), ('PT156', 'TDA001', 'PROD156', 'PRV020'),
('PT157', 'TDA001', 'PROD157', 'PRV018'), ('PT158', 'TDA001', 'PROD158', 'PRV018'),
('PT159', 'TDA001', 'PROD159', 'PRV019'), ('PT160', 'TDA001', 'PROD160', 'PRV019'),
('PT161', 'TDA001', 'PROD161', 'PRV019'),

-- Limpieza (15 productos)
('PT162', 'TDA001', 'PROD162', 'PRV021'), ('PT163', 'TDA001', 'PROD163', 'PRV021'),
('PT164', 'TDA001', 'PROD164', 'PRV022'), ('PT165', 'TDA001', 'PROD165', 'PRV022'),
('PT166', 'TDA001', 'PROD166', 'PRV022'), ('PT167', 'TDA001', 'PROD167', 'PRV021'),
('PT168', 'TDA001', 'PROD168', 'PRV021'), ('PT169', 'TDA001', 'PROD169', 'PRV022'),
('PT170', 'TDA001', 'PROD170', 'PRV022'), ('PT171', 'TDA001', 'PROD171', 'PRV021'),
('PT172', 'TDA001', 'PROD172', 'PRV021'), ('PT173', 'TDA001', 'PROD173', 'PRV022'),
('PT174', 'TDA001', 'PROD174', 'PRV022'), ('PT175', 'TDA001', 'PROD175', 'PRV022'),
('PT176', 'TDA001', 'PROD176', 'PRV021'),

-- LA CARNICERÍA EL BUEN CORTE (TDA002) - Especializada en carnes, pescados y lácteos
-- Carnes (15 productos)
('PT201', 'TDA002', 'PROD046', 'PRV008'), ('PT202', 'TDA002', 'PROD047', 'PRV008'),
('PT203', 'TDA002', 'PROD048', 'PRV008'), ('PT204', 'TDA002', 'PROD049', 'PRV008'),
('PT205', 'TDA002', 'PROD050', 'PRV008'), ('PT206', 'TDA002', 'PROD051', 'PRV008'),
('PT207', 'TDA002', 'PROD052', 'PRV008'), ('PT208', 'TDA002', 'PROD053', 'PRV008'),
('PT209', 'TDA002', 'PROD054', 'PRV008'), ('PT210', 'TDA002', 'PROD055', 'PRV008'),
('PT211', 'TDA002', 'PROD056', 'PRV008'), ('PT212', 'TDA002', 'PROD057', 'PRV008'),
('PT213', 'TDA002', 'PROD058', 'PRV008'), ('PT214', 'TDA002', 'PROD059', 'PRV008'),
('PT215', 'TDA002', 'PROD060', 'PRV008'),

-- Pescados (10 productos)
('PT216', 'TDA002', 'PROD061', 'PRV010'), ('PT217', 'TDA002', 'PROD062', 'PRV010'),
('PT218', 'TDA002', 'PROD063', 'PRV010'), ('PT219', 'TDA002', 'PROD064', 'PRV010'),
('PT220', 'TDA002', 'PROD065', 'PRV010'), ('PT221', 'TDA002', 'PROD066', 'PRV010'),
('PT222', 'TDA002', 'PROD067', 'PRV010'), ('PT223', 'TDA002', 'PROD068', 'PRV010'),
('PT224', 'TDA002', 'PROD069', 'PRV010'), ('PT225', 'TDA002', 'PROD070', 'PRV010'),

-- Lácteos (12 productos)
('PT226', 'TDA002', 'PROD071', 'PRV009'), ('PT227', 'TDA002', 'PROD072', 'PRV009'),
('PT228', 'TDA002', 'PROD073', 'PRV009'), ('PT229', 'TDA002', 'PROD074', 'PRV009'),
('PT230', 'TDA002', 'PROD075', 'PRV009'), ('PT231', 'TDA002', 'PROD076', 'PRV009'),
('PT232', 'TDA002', 'PROD077', 'PRV009'), ('PT233', 'TDA002', 'PROD078', 'PRV009'),
('PT234', 'TDA002', 'PROD079', 'PRV009'), ('PT235', 'TDA002', 'PROD080', 'PRV009'),
('PT236', 'TDA002', 'PROD081', 'PRV009'), ('PT237', 'TDA002', 'PROD082', 'PRV009'),

-- Algunas verduras y frutas básicas
('PT238', 'TDA002', 'PROD021', 'PRV004'), ('PT239', 'TDA002', 'PROD023', 'PRV004'),
('PT240', 'TDA002', 'PROD017', 'PRV002'), ('PT241', 'TDA002', 'PROD034', 'PRV007'),

-- SÚPER LA ESQUINA (TDA003) - Tienda pequeña con lo básico
-- Botanas (10 productos)
('PT301', 'TDA003', 'PROD083', 'PRV011'), ('PT302', 'TDA003', 'PROD084', 'PRV011'),
('PT303', 'TDA003', 'PROD086', 'PRV011'), ('PT304', 'TDA003', 'PROD087', 'PRV011'),
('PT305', 'TDA003', 'PROD088', 'PRV012'), ('PT306', 'TDA003', 'PROD090', 'PRV012'),
('PT307', 'TDA003', 'PROD093', 'PRV012'), ('PT308', 'TDA003', 'PROD094', 'PRV012'),
('PT309', 'TDA003', 'PROD095', 'PRV012'), ('PT310', 'TDA003', 'PROD097', 'PRV012'),

-- Bebidas (10 productos)
('PT311', 'TDA003', 'PROD098', 'PRV012'), ('PT312', 'TDA003', 'PROD099', 'PRV012'),
('PT313', 'TDA003', 'PROD100', 'PRV012'), ('PT314', 'TDA003', 'PROD101', 'PRV012'),
('PT315', 'TDA003', 'PROD102', 'PRV012'), ('PT316', 'TDA003', 'PROD103', 'PRV012'),
('PT317', 'TDA003', 'PROD104', 'PRV012'), ('PT318', 'TDA003', 'PROD105', 'PRV012'),
('PT319', 'TDA003', 'PROD106', 'PRV012'), ('PT320', 'TDA003', 'PROD107', 'PRV012'),

-- Dulces (10 productos)
('PT321', 'TDA003', 'PROD120', 'PRV015'), ('PT322', 'TDA003', 'PROD121', 'PRV015'),
('PT323', 'TDA003', 'PROD122', 'PRV015'), ('PT324', 'TDA003', 'PROD126', 'PRV016'),
('PT325', 'TDA003', 'PROD127', 'PRV016'), ('PT326', 'TDA003', 'PROD128', 'PRV016'),
('PT327', 'TDA003', 'PROD129', 'PRV016'), ('PT328', 'TDA003', 'PROD130', 'PRV016'),
('PT329', 'TDA003', 'PROD132', 'PRV015'), ('PT330', 'TDA003', 'PROD133', 'PRV015'),

-- Panadería básica (6 productos)
('PT331', 'TDA003', 'PROD108', 'PRV013'), ('PT332', 'TDA003', 'PROD110', 'PRV014'),
('PT333', 'TDA003', 'PROD111', 'PRV014'), ('PT334', 'TDA003', 'PROD117', 'PRV014'),
('PT335', 'TDA003', 'PROD118', 'PRV014'), ('PT336', 'TDA003', 'PROD119', 'PRV013'),

-- Lácteos básicos (6 productos)
('PT337', 'TDA003', 'PROD071', 'PRV009'), ('PT338', 'TDA003', 'PROD075', 'PRV009'),
('PT339', 'TDA003', 'PROD078', 'PRV009'), ('PT340', 'TDA003', 'PROD079', 'PRV009'),
('PT341', 'TDA003', 'PROD081', 'PRV009'), ('PT342', 'TDA003', 'PROD082', 'PRV009'),

-- Despensa básica (8 productos)
('PT343', 'TDA003', 'PROD135', 'PRV017'), ('PT344', 'TDA003', 'PROD136', 'PRV017'),
('PT345', 'TDA003', 'PROD137', 'PRV017'), ('PT346', 'TDA003', 'PROD142', 'PRV017'),
('PT347', 'TDA003', 'PROD143', 'PRV017'), ('PT348', 'TDA003', 'PROD147', 'PRV018'),
('PT349', 'TDA003', 'PROD148', 'PRV018'), ('PT350', 'TDA003', 'PROD152', 'PRV020'),

-- Limpieza básica (8 productos)
('PT351', 'TDA003', 'PROD162', 'PRV021'), ('PT352', 'TDA003', 'PROD164', 'PRV022'),
('PT353', 'TDA003', 'PROD167', 'PRV021'), ('PT354', 'TDA003', 'PROD169', 'PRV022'),
('PT355', 'TDA003', 'PROD171', 'PRV021'), ('PT356', 'TDA003', 'PROD172', 'PRV021'),
('PT357', 'TDA003', 'PROD174', 'PRV022'), ('PT358', 'TDA003', 'PROD175', 'PRV022'),

-- TODO PARA TI (TDA004) - Tienda de barrio pequeña
-- Botanas (12 productos)
('PT401', 'TDA004', 'PROD083', 'PRV011'), ('PT402', 'TDA004', 'PROD084', 'PRV011'),
('PT403', 'TDA004', 'PROD085', 'PRV011'), ('PT404', 'TDA004', 'PROD086', 'PRV011'),
('PT405', 'TDA004', 'PROD087', 'PRV011'), ('PT406', 'TDA004', 'PROD088', 'PRV012'),
('PT407', 'TDA004', 'PROD089', 'PRV011'), ('PT408', 'TDA004', 'PROD090', 'PRV012'),
('PT409', 'TDA004', 'PROD091', 'PRV012'), ('PT410', 'TDA004', 'PROD092', 'PRV012'),
('PT411', 'TDA004', 'PROD094', 'PRV012'), ('PT412', 'TDA004', 'PROD097', 'PRV012'),

-- Bebidas (10 productos)
('PT413', 'TDA004', 'PROD098', 'PRV012'), ('PT414', 'TDA004', 'PROD099', 'PRV012'),
('PT415', 'TDA004', 'PROD100', 'PRV012'), ('PT416', 'TDA004', 'PROD101', 'PRV012'),
('PT417', 'TDA004', 'PROD102', 'PRV012'), ('PT418', 'TDA004', 'PROD103', 'PRV012'),
('PT419', 'TDA004', 'PROD104', 'PRV012'), ('PT420', 'TDA004', 'PROD105', 'PRV012'),
('PT421', 'TDA004', 'PROD106', 'PRV012'), ('PT422', 'TDA004', 'PROD107', 'PRV012'),

-- Dulces (12 productos)
('PT423', 'TDA004', 'PROD120', 'PRV015'), ('PT424', 'TDA004', 'PROD121', 'PRV015'),
('PT425', 'TDA004', 'PROD122', 'PRV015'), ('PT426', 'TDA004', 'PROD123', 'PRV015'),
('PT427', 'TDA004', 'PROD124', 'PRV015'), ('PT428', 'TDA004', 'PROD125', 'PRV016'),
('PT429', 'TDA004', 'PROD128', 'PRV016'), ('PT430', 'TDA004', 'PROD129', 'PRV016'),
('PT431', 'TDA004', 'PROD130', 'PRV016'), ('PT432', 'TDA004', 'PROD131', 'PRV016'),
('PT433', 'TDA004', 'PROD132', 'PRV015'), ('PT434', 'TDA004', 'PROD133', 'PRV015'),

-- Panadería (7 productos)
('PT435', 'TDA004', 'PROD108', 'PRV013'), ('PT436', 'TDA004', 'PROD110', 'PRV014'),
('PT437', 'TDA004', 'PROD111', 'PRV014'), ('PT438', 'TDA004', 'PROD112', 'PRV014'),
('PT439', 'TDA004', 'PROD117', 'PRV014'), ('PT440', 'TDA004', 'PROD118', 'PRV014'),
('PT441', 'TDA004', 'PROD119', 'PRV013'),

-- Lácteos (8 productos)
('PT442', 'TDA004', 'PROD071', 'PRV009'), ('PT443', 'TDA004', 'PROD073', 'PRV009'),
('PT444', 'TDA004', 'PROD075', 'PRV009'), ('PT445', 'TDA004', 'PROD076', 'PRV009'),
('PT446', 'TDA004', 'PROD078', 'PRV009'), ('PT447', 'TDA004', 'PROD079', 'PRV009'),
('PT448', 'TDA004', 'PROD081', 'PRV009'), ('PT449', 'TDA004', 'PROD082', 'PRV009'),

-- Despensa (10 productos)
('PT450', 'TDA004', 'PROD135', 'PRV017'), ('PT451', 'TDA004', 'PROD136', 'PRV017'),
('PT452', 'TDA004', 'PROD137', 'PRV017'), ('PT453', 'TDA004', 'PROD141', 'PRV017'),
('PT454', 'TDA004', 'PROD142', 'PRV017'), ('PT455', 'TDA004', 'PROD143', 'PRV017'),
('PT456', 'TDA004', 'PROD147', 'PRV018'), ('PT457', 'TDA004', 'PROD148', 'PRV018'),
('PT458', 'TDA004', 'PROD150', 'PRV020'), ('PT459', 'TDA004', 'PROD152', 'PRV020'),

-- Limpieza (10 productos)
('PT460', 'TDA004', 'PROD162', 'PRV021'), ('PT461', 'TDA004', 'PROD163', 'PRV021'),
('PT462', 'TDA004', 'PROD164', 'PRV022'), ('PT463', 'TDA004', 'PROD165', 'PRV022'),
('PT464', 'TDA004', 'PROD167', 'PRV021'), ('PT465', 'TDA004', 'PROD169', 'PRV022'),
('PT466', 'TDA004', 'PROD171', 'PRV021'), ('PT467', 'TDA004', 'PROD173', 'PRV022'),
('PT468', 'TDA004', 'PROD174', 'PRV022'), ('PT469', 'TDA004', 'PROD175', 'PRV022'),

-- MEGA ABARROTES LA PROVIDENCIA (TDA005) - Tienda grande con todo
-- Frutas (20 productos)
('PT501', 'TDA005', 'PROD001', 'PRV001'), ('PT502', 'TDA005', 'PROD002', 'PRV001'),
('PT503', 'TDA005', 'PROD003', 'PRV002'), ('PT504', 'TDA005', 'PROD004', 'PRV002'),
('PT505', 'TDA005', 'PROD005', 'PRV002'), ('PT506', 'TDA005', 'PROD006', 'PRV001'),
('PT507', 'TDA005', 'PROD007', 'PRV001'), ('PT508', 'TDA005', 'PROD008', 'PRV003'),
('PT509', 'TDA005', 'PROD009', 'PRV003'), ('PT510', 'TDA005', 'PROD010', 'PRV003'),
('PT511', 'TDA005', 'PROD011', 'PRV002'), ('PT512', 'TDA005', 'PROD012', 'PRV003'),
('PT513', 'TDA005', 'PROD013', 'PRV003'), ('PT514', 'TDA005', 'PROD014', 'PRV001'),
('PT515', 'TDA005', 'PROD015', 'PRV001'), ('PT516', 'TDA005', 'PROD016', 'PRV002'),
('PT517', 'TDA005', 'PROD017', 'PRV002'), ('PT518', 'TDA005', 'PROD018', 'PRV001'),
('PT519', 'TDA005', 'PROD019', 'PRV003'), ('PT520', 'TDA005', 'PROD020', 'PRV001'),

-- Verduras (25 productos)
('PT521', 'TDA005', 'PROD021', 'PRV004'), ('PT522', 'TDA005', 'PROD022', 'PRV005'),
('PT523', 'TDA005', 'PROD023', 'PRV004'), ('PT524', 'TDA005', 'PROD024', 'PRV005'),
('PT525', 'TDA005', 'PROD025', 'PRV006'), ('PT526', 'TDA005', 'PROD026', 'PRV004'),
('PT527', 'TDA005', 'PROD027', 'PRV005'), ('PT528', 'TDA005', 'PROD028', 'PRV005'),
('PT529', 'TDA005', 'PROD029', 'PRV007'), ('PT530', 'TDA005', 'PROD030', 'PRV006'),
('PT531', 'TDA005', 'PROD031', 'PRV006'), ('PT532', 'TDA005', 'PROD032', 'PRV007'),
('PT533', 'TDA005', 'PROD033', 'PRV004'), ('PT534', 'TDA005', 'PROD034', 'PRV007'),
('PT535', 'TDA005', 'PROD035', 'PRV007'), ('PT536', 'TDA005', 'PROD036', 'PRV005'),
('PT537', 'TDA005', 'PROD037', 'PRV005'), ('PT538', 'TDA005', 'PROD038', 'PRV006'),
('PT539', 'TDA005', 'PROD039', 'PRV004'), ('PT540', 'TDA005', 'PROD040', 'PRV004'),
('PT541', 'TDA005', 'PROD041', 'PRV007'), ('PT542', 'TDA005', 'PROD042', 'PRV006'),
('PT543', 'TDA005', 'PROD043', 'PRV006'), ('PT544', 'TDA005', 'PROD044', 'PRV004'),
('PT545', 'TDA005', 'PROD045', 'PRV005'),

-- Carnes (10 productos seleccionados)
('PT546', 'TDA005', 'PROD046', 'PRV008'), ('PT547', 'TDA005', 'PROD047', 'PRV008'),
('PT548', 'TDA005', 'PROD049', 'PRV008'), ('PT549', 'TDA005', 'PROD050', 'PRV008'),
('PT550', 'TDA005', 'PROD053', 'PRV008'), ('PT551', 'TDA005', 'PROD054', 'PRV008'),
('PT552', 'TDA005', 'PROD056', 'PRV008'), ('PT553', 'TDA005', 'PROD057', 'PRV008'),
('PT554', 'TDA005', 'PROD059', 'PRV008'), ('PT555', 'TDA005', 'PROD060', 'PRV008'),

-- Lácteos (12 productos)
('PT571', 'TDA005', 'PROD071', 'PRV009'), ('PT572', 'TDA005', 'PROD072', 'PRV009'),
('PT573', 'TDA005', 'PROD073', 'PRV009'), ('PT574', 'TDA005', 'PROD074', 'PRV009'),
('PT575', 'TDA005', 'PROD075', 'PRV009'), ('PT576', 'TDA005', 'PROD076', 'PRV009'),
('PT577', 'TDA005', 'PROD077', 'PRV009'), ('PT578', 'TDA005', 'PROD078', 'PRV009'),
('PT579', 'TDA005', 'PROD079', 'PRV009'), ('PT580', 'TDA005', 'PROD080', 'PRV009'),
('PT581', 'TDA005', 'PROD081', 'PRV009'), ('PT582', 'TDA005', 'PROD082', 'PRV009'),

-- Botanas (15 productos)
('PT583', 'TDA005', 'PROD083', 'PRV011'), ('PT584', 'TDA005', 'PROD084', 'PRV011'),
('PT585', 'TDA005', 'PROD085', 'PRV011'), ('PT586', 'TDA005', 'PROD086', 'PRV011'),
('PT587', 'TDA005', 'PROD087', 'PRV011'), ('PT588', 'TDA005', 'PROD088', 'PRV012'),
('PT589', 'TDA005', 'PROD089', 'PRV011'), ('PT590', 'TDA005', 'PROD090', 'PRV012'),
('PT591', 'TDA005', 'PROD091', 'PRV012'), ('PT592', 'TDA005', 'PROD092', 'PRV012'),
('PT593', 'TDA005', 'PROD093', 'PRV012'), ('PT594', 'TDA005', 'PROD094', 'PRV012'),
('PT595', 'TDA005', 'PROD095', 'PRV012'), ('PT596', 'TDA005', 'PROD096', 'PRV012'),
('PT597', 'TDA005', 'PROD097', 'PRV012'),

-- Bebidas (10 productos)
('PT598', 'TDA005', 'PROD098', 'PRV012'), ('PT599', 'TDA005', 'PROD099', 'PRV012'),
('PT600', 'TDA005', 'PROD100', 'PRV012'), ('PT601', 'TDA005', 'PROD101', 'PRV012'),
('PT602', 'TDA005', 'PROD102', 'PRV012'), ('PT603', 'TDA005', 'PROD103', 'PRV012'),
('PT604', 'TDA005', 'PROD104', 'PRV012'), ('PT605', 'TDA005', 'PROD105', 'PRV012'),
('PT606', 'TDA005', 'PROD106', 'PRV012'), ('PT607', 'TDA005', 'PROD107', 'PRV012'),

-- Panadería (12 productos)
('PT608', 'TDA005', 'PROD108', 'PRV013'), ('PT609', 'TDA005', 'PROD109', 'PRV013'),
('PT610', 'TDA005', 'PROD110', 'PRV014'), ('PT611', 'TDA005', 'PROD111', 'PRV014'),
('PT612', 'TDA005', 'PROD112', 'PRV014'), ('PT613', 'TDA005', 'PROD113', 'PRV014'),
('PT614', 'TDA005', 'PROD114', 'PRV013'), ('PT615', 'TDA005', 'PROD115', 'PRV013'),
('PT616', 'TDA005', 'PROD116', 'PRV014'), ('PT617', 'TDA005', 'PROD117', 'PRV014'),
('PT618', 'TDA005', 'PROD118', 'PRV014'), ('PT619', 'TDA005', 'PROD119', 'PRV013'),

-- Dulces (15 productos)
('PT620', 'TDA005', 'PROD120', 'PRV015'), ('PT621', 'TDA005', 'PROD121', 'PRV015'),
('PT622', 'TDA005', 'PROD122', 'PRV015'), ('PT623', 'TDA005', 'PROD123', 'PRV015'),
('PT624', 'TDA005', 'PROD124', 'PRV015'), ('PT625', 'TDA005', 'PROD125', 'PRV016'),
('PT626', 'TDA005', 'PROD126', 'PRV016'), ('PT627', 'TDA005', 'PROD127', 'PRV016'),
('PT628', 'TDA005', 'PROD128', 'PRV016'), ('PT629', 'TDA005', 'PROD129', 'PRV016'),
('PT630', 'TDA005', 'PROD130', 'PRV016'), ('PT631', 'TDA005', 'PROD131', 'PRV016'),
('PT632', 'TDA005', 'PROD132', 'PRV015'), ('PT633', 'TDA005', 'PROD133', 'PRV015'),
('PT634', 'TDA005', 'PROD134', 'PRV015'),

-- Despensa (12 productos)
('PT635', 'TDA005', 'PROD135', 'PRV017'), ('PT636', 'TDA005', 'PROD136', 'PRV017'),
('PT637', 'TDA005', 'PROD137', 'PRV017'), ('PT638', 'TDA005', 'PROD138', 'PRV017'),
('PT639', 'TDA005', 'PROD139', 'PRV017'), ('PT640', 'TDA005', 'PROD140', 'PRV017'),
('PT641', 'TDA005', 'PROD141', 'PRV017'), ('PT642', 'TDA005', 'PROD142', 'PRV017'),
('PT643', 'TDA005', 'PROD143', 'PRV017'), ('PT644', 'TDA005', 'PROD144', 'PRV017'),
('PT645', 'TDA005', 'PROD145', 'PRV017'), ('PT646', 'TDA005', 'PROD146', 'PRV017'),

-- Enlatados (15 productos)
('PT647', 'TDA005', 'PROD147', 'PRV018'), ('PT648', 'TDA005', 'PROD148', 'PRV018'),
('PT649', 'TDA005', 'PROD149', 'PRV019'), ('PT650', 'TDA005', 'PROD150', 'PRV020'),
('PT651', 'TDA005', 'PROD151', 'PRV020'), ('PT652', 'TDA005', 'PROD152', 'PRV020'),
('PT653', 'TDA005', 'PROD153', 'PRV019'), ('PT654', 'TDA005', 'PROD154', 'PRV019'),
('PT655', 'TDA005', 'PROD155', 'PRV020'), ('PT656', 'TDA005', 'PROD156', 'PRV020'),
('PT657', 'TDA005', 'PROD157', 'PRV018'), ('PT658', 'TDA005', 'PROD158', 'PRV018'),
('PT659', 'TDA005', 'PROD159', 'PRV019'), ('PT660', 'TDA005', 'PROD160', 'PRV019'),
('PT661', 'TDA005', 'PROD161', 'PRV019'),

-- Limpieza (15 productos)
('PT662', 'TDA005', 'PROD162', 'PRV021'), ('PT663', 'TDA005', 'PROD163', 'PRV021'),
('PT664', 'TDA005', 'PROD164', 'PRV022'), ('PT665', 'TDA005', 'PROD165', 'PRV022'),
('PT666', 'TDA005', 'PROD166', 'PRV022'), ('PT667', 'TDA005', 'PROD167', 'PRV021'),
('PT668', 'TDA005', 'PROD168', 'PRV021'), ('PT669', 'TDA005', 'PROD169', 'PRV022'),
('PT670', 'TDA005', 'PROD170', 'PRV022'), ('PT671', 'TDA005', 'PROD171', 'PRV021'),
('PT672', 'TDA005', 'PROD172', 'PRV021'), ('PT673', 'TDA005', 'PROD173', 'PRV022'),
('PT674', 'TDA005', 'PROD174', 'PRV022'), ('PT675', 'TDA005', 'PROD175', 'PRV022'),
('PT676', 'TDA005', 'PROD176', 'PRV021');

-- ALCOHOL (20 productos - TODO)
INSERT INTO producto_tienda (id_particular, id_tienda, id_producto, id_provedor) VALUES
-- Cervezas
('PT677', 'TDA001', 'PROD177', 'PRV023'), ('PT678', 'TDA001', 'PROD178', 'PRV023'),
('PT679', 'TDA001', 'PROD179', 'PRV023'), ('PT680', 'TDA001', 'PROD180', 'PRV023'),
('PT681', 'TDA001', 'PROD181', 'PRV025'), ('PT682', 'TDA001', 'PROD182', 'PRV025'),
('PT683', 'TDA001', 'PROD183', 'PRV025'), ('PT684', 'TDA001', 'PROD184', 'PRV025'),
('PT685', 'TDA001', 'PROD185', 'PRV025'), ('PT686', 'TDA001', 'PROD186', 'PRV023'),
('PT687', 'TDA001', 'PROD187', 'PRV025'), ('PT688', 'TDA001', 'PROD188', 'PRV023'),
-- Destilados
('PT689', 'TDA001', 'PROD189', 'PRV024'), ('PT690', 'TDA001', 'PROD190', 'PRV024'),
('PT691', 'TDA001', 'PROD191', 'PRV024'), ('PT692', 'TDA001', 'PROD192', 'PRV024'),
('PT693', 'TDA001', 'PROD193', 'PRV024'),
-- Vinos
('PT694', 'TDA001', 'PROD194', 'PRV024'), ('PT695', 'TDA001', 'PROD195', 'PRV024'),
('PT696', 'TDA001', 'PROD196', 'PRV024'),

-- TABACO (8 de 10 - marcas premium)
('PT697', 'TDA001', 'PROD197', 'PRV026'), ('PT698', 'TDA001', 'PROD198', 'PRV026'),
('PT699', 'TDA001', 'PROD199', 'PRV026'), ('PT700', 'TDA001', 'PROD200', 'PRV026'),
('PT701', 'TDA001', 'PROD201', 'PRV027'), ('PT702', 'TDA001', 'PROD202', 'PRV027'),
('PT703', 'TDA001', 'PROD203', 'PRV026'), ('PT704', 'TDA001', 'PROD206', 'PRV027'),

-- GALLETAS (8 productos - TODO)
('PT705', 'TDA001', 'PROD207', 'PRV028'), ('PT706', 'TDA001', 'PROD208', 'PRV028'),
('PT707', 'TDA001', 'PROD209', 'PRV028'), ('PT708', 'TDA001', 'PROD210', 'PRV028'),
('PT709', 'TDA001', 'PROD211', 'PRV028'), ('PT710', 'TDA001', 'PROD212', 'PRV028'),
('PT711', 'TDA001', 'PROD213', 'PRV028'), ('PT712', 'TDA001', 'PROD214', 'PRV028'),

-- PASTELITOS (7 productos - TODO)
('PT713', 'TDA001', 'PROD215', 'PRV029'), ('PT714', 'TDA001', 'PROD216', 'PRV029'),
('PT715', 'TDA001', 'PROD217', 'PRV029'), ('PT716', 'TDA001', 'PROD218', 'PRV029'),
('PT717', 'TDA001', 'PROD219', 'PRV029'), ('PT718', 'TDA001', 'PROD220', 'PRV029'),
('PT719', 'TDA001', 'PROD221', 'PRV029'),

-- FRITURAS ADICIONALES (10 productos - TODO)
('PT720', 'TDA001', 'PROD222', 'PRV030'), ('PT721', 'TDA001', 'PROD223', 'PRV030'),
('PT722', 'TDA001', 'PROD224', 'PRV030'), ('PT723', 'TDA001', 'PROD225', 'PRV030'),
('PT724', 'TDA001', 'PROD226', 'PRV030'), ('PT725', 'TDA001', 'PROD227', 'PRV030'),
('PT726', 'TDA001', 'PROD228', 'PRV030'), ('PT727', 'TDA001', 'PROD229', 'PRV030'),
('PT728', 'TDA001', 'PROD230', 'PRV030'), ('PT729', 'TDA001', 'PROD231', 'PRV030'),

-- ALCOHOL (Solo 10 cervezas populares para acompañar carnes)
('PT730', 'TDA002', 'PROD177', 'PRV023'), ('PT731', 'TDA002', 'PROD178', 'PRV023'),
('PT732', 'TDA002', 'PROD179', 'PRV023'), ('PT733', 'TDA002', 'PROD180', 'PRV023'),
('PT734', 'TDA002', 'PROD181', 'PRV025'), ('PT735', 'TDA002', 'PROD182', 'PRV025'),
('PT736', 'TDA002', 'PROD184', 'PRV025'), ('PT737', 'TDA002', 'PROD185', 'PRV025'),
('PT738', 'TDA002', 'PROD187', 'PRV025'), ('PT739', 'TDA002', 'PROD188', 'PRV023'),

-- GALLETAS (5 productos básicos)
('PT740', 'TDA002', 'PROD207', 'PRV028'), ('PT741', 'TDA002', 'PROD209', 'PRV028'),
('PT742', 'TDA002', 'PROD211', 'PRV028'), ('PT743', 'TDA002', 'PROD214', 'PRV028'),
('PT744', 'TDA002', 'PROD208', 'PRV028'),

-- PASTELITOS (3 productos)
('PT745', 'TDA002', 'PROD215', 'PRV029'), ('PT746', 'TDA002', 'PROD216', 'PRV029'),
('PT747', 'TDA002', 'PROD221', 'PRV029'),

-- FRITURAS (5 productos para botanear)
('PT748', 'TDA002', 'PROD222', 'PRV030'), ('PT749', 'TDA002', 'PROD223', 'PRV030'),
('PT750', 'TDA002', 'PROD225', 'PRV030'), ('PT751', 'TDA002', 'PROD227', 'PRV030'),
('PT752', 'TDA002', 'PROD231', 'PRV030'),

-- ALCOHOL (12 cervezas + 2 destilados económicos)
('PT753', 'TDA003', 'PROD177', 'PRV023'), ('PT754', 'TDA003', 'PROD178', 'PRV023'),
('PT755', 'TDA003', 'PROD179', 'PRV023'), ('PT756', 'TDA003', 'PROD181', 'PRV025'),
('PT757', 'TDA003', 'PROD182', 'PRV025'), ('PT758', 'TDA003', 'PROD183', 'PRV025'),
('PT759', 'TDA003', 'PROD184', 'PRV025'), ('PT760', 'TDA003', 'PROD185', 'PRV025'),
('PT761', 'TDA003', 'PROD186', 'PRV023'), ('PT762', 'TDA003', 'PROD187', 'PRV025'),
('PT763', 'TDA003', 'PROD179', 'PRV025'), ('PT764', 'TDA003', 'PROD181', 'PRV023'),
-- Destilados económicos
('PT765', 'TDA003', 'PROD189', 'PRV024'), ('PT766', 'TDA003', 'PROD193', 'PRV024'),

-- TABACO (TODO - 10 productos, alta demanda)
('PT767', 'TDA003', 'PROD197', 'PRV026'), ('PT768', 'TDA003', 'PROD198', 'PRV026'),
('PT769', 'TDA003', 'PROD199', 'PRV026'), ('PT770', 'TDA003', 'PROD200', 'PRV026'),
('PT771', 'TDA003', 'PROD201', 'PRV027'), ('PT772', 'TDA003', 'PROD202', 'PRV027'),
('PT773', 'TDA003', 'PROD203', 'PRV026'), ('PT774', 'TDA003', 'PROD204', 'PRV026'),
('PT775', 'TDA003', 'PROD205', 'PRV027'), ('PT776', 'TDA003', 'PROD206', 'PRV027'),

-- GALLETAS (6 productos económicos)
('PT777', 'TDA003', 'PROD207', 'PRV028'), ('PT778', 'TDA003', 'PROD208', 'PRV028'),
('PT779', 'TDA003', 'PROD209', 'PRV028'), ('PT780', 'TDA003', 'PROD212', 'PRV028'),
('PT781', 'TDA003', 'PROD213', 'PRV028'), ('PT782', 'TDA003', 'PROD214', 'PRV028'),

-- PASTELITOS (5 productos populares)
('PT783', 'TDA003', 'PROD215', 'PRV029'), ('PT784', 'TDA003', 'PROD216', 'PRV029'),
('PT785', 'TDA003', 'PROD217', 'PRV029'), ('PT786', 'TDA003', 'PROD219', 'PRV029'),
('PT787', 'TDA003', 'PROD220', 'PRV029'),

-- FRITURAS ADICIONALES (TODO - 10 productos, alta rotación)
('PT788', 'TDA003', 'PROD222', 'PRV030'), ('PT789', 'TDA003', 'PROD223', 'PRV030'),
('PT790', 'TDA003', 'PROD224', 'PRV030'), ('PT791', 'TDA003', 'PROD225', 'PRV030'),
('PT792', 'TDA003', 'PROD226', 'PRV030'), ('PT793', 'TDA003', 'PROD227', 'PRV030'),
('PT794', 'TDA003', 'PROD228', 'PRV030'), ('PT795', 'TDA003', 'PROD229', 'PRV030'),
('PT796', 'TDA003', 'PROD230', 'PRV030'), ('PT797', 'TDA003', 'PROD231', 'PRV030'),

-- ALCOHOL (8 cervezas + 3 destilados)
('PT798', 'TDA004', 'PROD177', 'PRV023'), ('PT799', 'TDA004', 'PROD178', 'PRV023'),
('PT800', 'TDA004', 'PROD179', 'PRV023'), ('PT801', 'TDA004', 'PROD181', 'PRV025'),
('PT802', 'TDA004', 'PROD182', 'PRV025'), ('PT803', 'TDA004', 'PROD184', 'PRV025'),
('PT804', 'TDA004', 'PROD186', 'PRV023'), ('PT805', 'TDA004', 'PROD187', 'PRV025'),
-- Destilados
('PT806', 'TDA004', 'PROD189', 'PRV024'), ('PT807', 'TDA004', 'PROD190', 'PRV024'),
('PT808', 'TDA004', 'PROD191', 'PRV024'),

-- TABACO (7 de 10)
('PT809', 'TDA004', 'PROD197', 'PRV026'), ('PT810', 'TDA004', 'PROD198', 'PRV026'),
('PT811', 'TDA004', 'PROD199', 'PRV026'), ('PT812', 'TDA004', 'PROD200', 'PRV026'),
('PT813', 'TDA004', 'PROD203', 'PRV026'), ('PT814', 'TDA004', 'PROD204', 'PRV026'),
('PT815', 'TDA004', 'PROD205', 'PRV027'),

-- GALLETAS (TODO - 8 productos)
('PT816', 'TDA004', 'PROD207', 'PRV028'), ('PT817', 'TDA004', 'PROD208', 'PRV028'),
('PT818', 'TDA004', 'PROD209', 'PRV028'), ('PT819', 'TDA004', 'PROD210', 'PRV028'),
('PT820', 'TDA004', 'PROD211', 'PRV028'), ('PT821', 'TDA004', 'PROD212', 'PRV028'),
('PT822', 'TDA004', 'PROD213', 'PRV028'), ('PT823', 'TDA004', 'PROD214', 'PRV028'),

-- PASTELITOS (TODO - 7 productos)
('PT824', 'TDA004', 'PROD215', 'PRV029'), ('PT825', 'TDA004', 'PROD216', 'PRV029'),
('PT826', 'TDA004', 'PROD217', 'PRV029'), ('PT827', 'TDA004', 'PROD218', 'PRV029'),
('PT828', 'TDA004', 'PROD219', 'PRV029'), ('PT829', 'TDA004', 'PROD220', 'PRV029'),
('PT830', 'TDA004', 'PROD221', 'PRV029'),

-- FRITURAS ADICIONALES (TODO - 10 productos)
('PT831', 'TDA004', 'PROD222', 'PRV030'), ('PT832', 'TDA004', 'PROD223', 'PRV030'),
('PT833', 'TDA004', 'PROD224', 'PRV030'), ('PT834', 'TDA004', 'PROD225', 'PRV030'),
('PT835', 'TDA004', 'PROD226', 'PRV030'), ('PT836', 'TDA004', 'PROD227', 'PRV030'),
('PT837', 'TDA004', 'PROD228', 'PRV030'), ('PT838', 'TDA004', 'PROD229', 'PRV030'),
('PT839', 'TDA004', 'PROD230', 'PRV030'), ('PT840', 'TDA004', 'PROD231', 'PRV030'),

-- ALCOHOL (TODO - 20 productos)
('PT841', 'TDA005', 'PROD177', 'PRV023'), ('PT842', 'TDA005', 'PROD178', 'PRV023'),
('PT843', 'TDA005', 'PROD179', 'PRV023'), ('PT844', 'TDA005', 'PROD180', 'PRV023'),
('PT845', 'TDA005', 'PROD181', 'PRV025'), ('PT846', 'TDA005', 'PROD182', 'PRV025'),
('PT847', 'TDA005', 'PROD183', 'PRV025'), ('PT848', 'TDA005', 'PROD184', 'PRV025'),
('PT849', 'TDA005', 'PROD185', 'PRV025'), ('PT850', 'TDA005', 'PROD186', 'PRV023'),
('PT851', 'TDA005', 'PROD187', 'PRV025'), ('PT852', 'TDA005', 'PROD188', 'PRV023'),
-- Destilados
('PT853', 'TDA005', 'PROD189', 'PRV024'), ('PT854', 'TDA005', 'PROD190', 'PRV024'),
('PT855', 'TDA005', 'PROD191', 'PRV024'), ('PT856', 'TDA005', 'PROD192', 'PRV024'),
('PT857', 'TDA005', 'PROD193', 'PRV024'),
-- Vinos
('PT858', 'TDA005', 'PROD194', 'PRV024'), ('PT859', 'TDA005', 'PROD195', 'PRV024'),
('PT860', 'TDA005', 'PROD196', 'PRV024'),

-- TABACO (TODO - 10 productos)
('PT861', 'TDA005', 'PROD197', 'PRV026'), ('PT862', 'TDA005', 'PROD198', 'PRV026'),
('PT863', 'TDA005', 'PROD199', 'PRV026'), ('PT864', 'TDA005', 'PROD200', 'PRV026'),
('PT865', 'TDA005', 'PROD201', 'PRV027'), ('PT866', 'TDA005', 'PROD202', 'PRV027'),
('PT867', 'TDA005', 'PROD203', 'PRV026'), ('PT868', 'TDA005', 'PROD204', 'PRV026'),
('PT869', 'TDA005', 'PROD205', 'PRV027'), ('PT870', 'TDA005', 'PROD206', 'PRV027'),

-- GALLETAS (TODO - 8 productos)
('PT871', 'TDA005', 'PROD207', 'PRV028'), ('PT872', 'TDA005', 'PROD208', 'PRV028'),
('PT873', 'TDA005', 'PROD209', 'PRV028'), ('PT874', 'TDA005', 'PROD210', 'PRV028'),
('PT875', 'TDA005', 'PROD211', 'PRV028'), ('PT876', 'TDA005', 'PROD212', 'PRV028'),
('PT877', 'TDA005', 'PROD213', 'PRV028'), ('PT878', 'TDA005', 'PROD214', 'PRV028'),

-- PASTELITOS (TODO - 7 productos)
('PT879', 'TDA005', 'PROD215', 'PRV029'), ('PT880', 'TDA005', 'PROD216', 'PRV029'),
('PT881', 'TDA005', 'PROD217', 'PRV029'), ('PT882', 'TDA005', 'PROD218', 'PRV029'),
('PT883', 'TDA005', 'PROD219', 'PRV029'), ('PT884', 'TDA005', 'PROD220', 'PRV029'),
('PT885', 'TDA005', 'PROD221', 'PRV029'),

-- FRITURAS ADICIONALES (TODO - 10 productos)
('PT886', 'TDA005', 'PROD222', 'PRV030'), ('PT887', 'TDA005', 'PROD223', 'PRV030'),
('PT888', 'TDA005', 'PROD224', 'PRV030'), ('PT889', 'TDA005', 'PROD225', 'PRV030'),
('PT890', 'TDA005', 'PROD226', 'PRV030'), ('PT891', 'TDA005', 'PROD227', 'PRV030'),
('PT892', 'TDA005', 'PROD228', 'PRV030'), ('PT893', 'TDA005', 'PROD229', 'PRV030'),
('PT894', 'TDA005', 'PROD230', 'PRV030'), ('PT895', 'TDA005', 'PROD231', 'PRV030');

('PT118', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT119', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (Margen ~35%)
('PT120', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT121', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT122', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT123', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT124', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT125', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT126', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT127', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT128', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT129', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT130', 3.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT131', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT132', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT133', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT134', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (Margen ~25%)
('PT135', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT136', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT137', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT138', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT139', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT140', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT141', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT142', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT143', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT144', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT145', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT146', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Enlatados (Margen ~27%)
('PT147', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT148', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT149', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT150', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT151', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT152', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT153', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT154', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT155', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT156', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT157', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT158', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT159', 46.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT160', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT161', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (Margen ~28%)
('PT162', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT163', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT164', 59.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT165', 66.00, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT165', 70.00, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT166', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT167', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT168', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT169', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT170', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT171', 46.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT172', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT173', 73.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT174', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT175', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT176', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (Margen ~30%)
('PT677', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT678', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT679', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT680', 190.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT681', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT682', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT683', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT684', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT685', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT686', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT687', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT688', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT689', 245.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT690', 260.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT691', 190.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT692', 205.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT693', 115.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT694', 165.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT695', 158.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT696', 150.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (Margen ~20%)
('PT697', 56.00, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT697', 60.00, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT698', 54.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT699', 62.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT700', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT701', 65.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT702', 60.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT703', 52.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT704', 47.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (Margen ~30%)
('PT705', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT706', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT707', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT708', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT709', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT710', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT711', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT712', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (Margen ~32%)
('PT713', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT714', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT715', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT716', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT717', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT718', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT719', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (Margen ~30%)
('PT720', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT721', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT722', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT723', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT724', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT725', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT726', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT727', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT728', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT729', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- TIENDA 2: La Carnicería - Margen Muy Alto en Carnes (30-40%)
-- =====================================================

-- Carnes (Margen ~35%)
INSERT INTO precio_venta (id_particular, precio_venta, fecha_ini, fecha_fin) VALUES
('PT201', 120.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT202', 105.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT203', 125.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT204', 165.00, '2025-08-01 00:00:00', '2025-09-05 23:59:59'),
('PT204', 172.00, '2025-09-06 00:00:00', '2025-10-31 23:59:59'),
('PT205', 110.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT206', 118.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT207', 98.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT208', 90.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT209', 76.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT210', 70.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT211', 83.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT212', 97.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT213', 95.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT214', 76.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT215', 104.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pescados (Margen ~38%)
('PT216', 135.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT217', 255.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT218', 99.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT219', 198.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT220', 310.00, '2025-08-01 00:00:00', '2025-08-31 23:59:59'),
('PT220', 325.00, '2025-09-01 00:00:00', '2025-10-31 23:59:59'),
('PT221', 395.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT222', 268.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT223', 225.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT224', 282.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT225', 211.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (Margen ~25%)
('PT226', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT227', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT228', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT229', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT230', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT231', 52.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT232', 58.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT233', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT234', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT235', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT236', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT237', 54.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Verduras (Margen ~22%)
('PT238', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT239', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT240', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT241', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (Margen ~25%)
('PT730', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT731', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT732', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT733', 180.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT734', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT735', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT736', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT737', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT738', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT739', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (Margen ~25%)
('PT740', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT741', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT742', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT743', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT744', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (Margen ~28%)
('PT745', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT746', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT747', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras (Margen ~25%)
('PT748', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT749', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT750', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT751', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT752', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- TIENDA 3: Súper La Esquina - Margen Bajo (10-20%)
-- =====================================================

-- Botanas (Margen ~15%)
INSERT INTO precio_venta (id_particular, precio_venta, fecha_ini, fecha_fin) VALUES
('PT301', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT302', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT303', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT304', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT305', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT306', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT307', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT308', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT309', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT310', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (Margen ~18%)
('PT311', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT312', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT313', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT314', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT315', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT316', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT317', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT318', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT319', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT320', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (Margen ~20%)
('PT321', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT322', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT323', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT324', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT325', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT326', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT327', 3.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT328', 3.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT329', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT330', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (Margen ~15%)
('PT331', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT332', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT333', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT334', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT335', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT336', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (Margen ~17%)
('PT337', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT338', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT339', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT340', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT341', 46.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT342', 51.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (Margen ~18%)
('PT343', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT344', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT345', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT346', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT347', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT348', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT349', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT350', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (Margen ~16%)
('PT351', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT352', 54.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT353', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT354', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT355', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT356', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT357', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT358', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (Margen ~18%)
('PT753', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT754', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT755', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT756', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT757', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT758', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT759', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT760', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT761', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT762', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT763', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT764', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT765', 215.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT766', 100.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (Margen ~15%)
('PT767', 52.00, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT767', 55.00, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT768', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT769', 58.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT770', 41.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT771', 60.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT772', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT773', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT774', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT775', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT776', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (Margen ~17%)
('PT777', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT778', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT779', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT780', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT781', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT782', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (Margen ~18%)
('PT783', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT784', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT785', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT786', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT787', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (Margen ~16%)
('PT788', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT789', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT790', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT791', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT792', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT793', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT794', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT795', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT796', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT797', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- TIENDA 4: Todo para Ti - Margen Medio (20-28%)
-- =====================================================

-- Botanas (Margen ~24%)
INSERT INTO precio_venta (id_particular, precio_venta, fecha_ini, fecha_fin) VALUES
('PT401', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT402', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT403', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT404', 18.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT405', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT406', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT407', 18.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT408', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT409', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT410', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT411', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT412', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (Margen ~23%)
('PT413', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT414', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT415', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT416', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT417', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT418', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT419', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT420', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT421', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT422', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (Margen ~27%)
('PT423', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT424', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT425', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT426', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT427', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT428', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT429', 6.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT430', 3.70, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT431', 3.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT432', 3.70, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT433', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT434', 5.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (Margen ~22%)
('PT435', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT436', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT437', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT438', 64.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT439', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT440', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT441', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (Margen ~24%)
('PT442', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT443', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT444', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT445', 51.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT446', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT447', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT448', 48.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT449', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (Margen ~23%)
('PT450', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT451', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT452', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT453', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT454', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT455', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT456', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT457', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT458', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT459', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (Margen ~25%)
('PT460', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT461', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT462', 58.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT463', 64.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT464', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT465', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT466', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT467', 71.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT468', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT469', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (Margen ~22%)
('PT798', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT799', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT800', 16.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT801', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT802', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT803', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT804', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT805', 16.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT806', 230.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT807', 243.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT808', 178.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (Margen ~18%)
('PT809', 54.00, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT809', 58.00, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT810', 52.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT811', 60.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT812', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT813', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT814', 47.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT815', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (Margen ~25%)
('PT816', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT817', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT818', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT819', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT820', 18.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT821', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT822', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT823', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (Margen ~26%)
('PT824', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT825', 18.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT826', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT827', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT828', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT829', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT830', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (Margen ~24%)
('PT831', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT832', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT833', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT834', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT835', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT836', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT837', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT838', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT839', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT840', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- TIENDA 5: Mega Abarrotes - Margen Medio-Bajo (18-25%)
-- =====================================================

-- Frutas (Margen ~22%)
INSERT INTO precio_venta (id_particular, precio_venta, fecha_ini, fecha_fin) VALUES
('PT501', 31.00, '2025-08-01 00:00:00', '2025-08-31 23:59:59'),
('PT501', 32.00, '2025-09-01 00:00:00', '2025-10-31 23:59:59'),
('PT502', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT503', 22.50, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT503', 23.50, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT504', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT505', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT506', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT507', 51.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT508', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT509', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT510', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT511', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT512', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT513', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT514', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT515', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT516', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT517', 24.00, '2025-08-01 00:00:00', '2025-09-20 23:59:59'),
('PT517', 27.00, '2025-09-21 00:00:00', '2025-10-31 23:59:59'),
('PT518', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT519', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT520', 68.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Verduras (Margen ~24%)
('PT521', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT522', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT523', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT524', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT525', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT526', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT527', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT528', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT529', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT530', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT531', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT532', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT533', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT534', 44.00, '2025-08-01 00:00:00', '2025-09-10 23:59:59'),
('PT534', 48.00, '2025-09-11 00:00:00', '2025-10-31 23:59:59'),
('PT535', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT536', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT537', 68.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT538', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT539', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT540', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT541', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT542', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT543', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT544', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT545', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Carnes (Margen ~22%)
('PT546', 105.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT547', 92.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT548', 150.00, '2025-08-01 00:00:00', '2025-09-05 23:59:59'),
('PT548', 156.00, '2025-09-06 00:00:00', '2025-10-31 23:59:59'),
('PT549', 99.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT550', 79.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT551', 66.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT552', 74.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT553', 87.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT554', 68.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT555', 93.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (Margen ~21%)
('PT571', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT572', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT573', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT574', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT575', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT576', 48.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT577', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT578', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT579', 37.00, '2025-08-01 00:00:00', '2025-09-25 23:59:59'),
('PT579', 39.00, '2025-09-26 00:00:00', '2025-10-31 23:59:59'),
('PT580', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT581', 46.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT582', 51.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Botanas (Margen ~23%)
('PT583', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT584', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT585', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT586', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT587', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT588', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT589', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT590', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT591', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT592', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT593', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT594', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT595', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT596', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT597', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (Margen ~24%)
('PT598', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT599', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT600', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT601', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT602', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT603', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT604', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT605', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT606', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT607', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (Margen ~21%)
('PT608', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT609', 39.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT610', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT611', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT612', 60.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT613', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT614', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT615', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT616', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT617', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT618', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT619', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (Margen ~25%)
('PT620', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT621', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT622', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT623', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT624', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT625', 16.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT626', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT627', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT628', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT629', 3.70, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT630', 3.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT631', 3.70, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT632', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT633', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT634', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (Margen ~22%)
('PT635', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT636', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT637', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT638', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT639', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT640', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT641', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT642', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT643', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT644', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT645', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT646', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Enlatados (Margen ~23%)
('PT647', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT648', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT649', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT650', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT651', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT652', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT653', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT654', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT655', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT656', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT657', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT658', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT659', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT660', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT661', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (Margen ~23%)
('PT662', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT663', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT664', 56.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT665', 62.00, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT665', 66.00, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT666', 47.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT667', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT668', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT669', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT670', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT671', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT672', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT673', 69.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT674', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT675', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT676', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (Margen ~23%)
('PT841', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT842', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT843', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT844', 175.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT845', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT846', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT847', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT848', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT849', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT850', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT851', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT852', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT853', 225.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT854', 240.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT855', 175.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT856', 188.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT857', 105.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT858', 148.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT859', 142.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT860', 135.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (Margen ~18%)
('PT861', 53.00, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT861', 56.00, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT862', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT863', 59.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT864', 41.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT865', 61.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT866', 56.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT867', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT868', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT869', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT870', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (Margen ~24%)
('PT871', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT872', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT873', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT874', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT875', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT876', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT877', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT878', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (Margen ~25%)
('PT879', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT880', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT881', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT882', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT883', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT884', 16.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT885', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (Margen ~23%)
('PT886', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT887', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT888', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT889', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT890', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT891', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT892', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT893', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT894', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT895', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- FIN DEL SCRIPT DE PRECIOS
-- =====================================================
-- Resumen:
-- ✅ Precios de compra para TODAS las tiendas (895 productos)
-- ✅ Precios de venta para TODAS las tiendas (895 productos)
-- ✅ Históricos con inflación selectiva en algunos productos
-- ✅ Márgenes diferenciados por tienda según personalidad
-- =====================================================-- =====================================================
-- SCRIPT 1: PRECIOS DE COMPRA Y VENTA
-- Periodo: Agosto 1 - Octubre 31, 2025
-- =====================================================

-- =====================================================
-- PRECIOS DE COMPRA - TIENDA 1 (Abarrotes San Miguel)
-- =====================================================

-- Frutas (20 productos) - algunos suben de precio
INSERT INTO precio_compra (id_particular, precio_compra, fecha_ini, fecha_fin) VALUES
('PT001', 25.50, '2025-08-01 00:00:00', '2025-08-31 23:59:59'),
('PT001', 26.50, '2025-09-01 00:00:00', '2025-10-31 23:59:59'),
('PT002', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT003', 18.50, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT003', 19.50, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT004', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT005', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT006', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT007', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT008', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT009', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT010', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT011', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT012', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT013', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT014', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT015', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT016', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT017', 20.00, '2025-08-01 00:00:00', '2025-09-20 23:59:59'),
('PT017', 22.00, '2025-09-21 00:00:00', '2025-10-31 23:59:59'),
('PT018', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT019', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT020', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Verduras (25 productos)
('PT021', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT022', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT023', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT024', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT025', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT026', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT027', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT028', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT029', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT030', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT031', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT032', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT033', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT034', 35.00, '2025-08-01 00:00:00', '2025-09-10 23:59:59'),
('PT034', 38.00, '2025-09-11 00:00:00', '2025-10-31 23:59:59'),
('PT035', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT036', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT037', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT038', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT039', 5.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT040', 5.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT041', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT042', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT043', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT044', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT045', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (12)
('PT071', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT072', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT073', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT074', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT075', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT076', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT077', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT078', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT079', 30.00, '2025-08-01 00:00:00', '2025-09-25 23:59:59'),
('PT079', 32.00, '2025-09-26 00:00:00', '2025-10-31 23:59:59'),
('PT080', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT081', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT082', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Botanas (15)
('PT083', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT084', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT085', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT086', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT087', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT088', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT089', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT090', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT091', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT092', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT093', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT094', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT095', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT096', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT097', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (10)
('PT098', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT099', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT100', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT101', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT102', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT103', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT104', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT105', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT106', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT107', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (12)
('PT108', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT109', 32.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT110', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT111', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT112', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT113', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT114', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT115', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT116', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT117', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT118', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT119', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (15)
('PT120', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT121', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT122', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT123', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT124', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT125', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT126', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT127', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT128', 5.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT129', 3.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT130', 2.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT131', 3.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT132', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT133', 4.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT134', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (12)
('PT135', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT136', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT137', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT138', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT139', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT140', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT141', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT142', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT143', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT144', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT145', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT146', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Enlatados (15)
('PT147', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT148', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT149', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT150', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT151', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT152', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT153', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT154', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT155', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT156', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT157', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT158', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT159', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT160', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT161', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (15)
('PT162', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT163', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT164', 45.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT165', 50.00, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT165', 53.00, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT166', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT167', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT168', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT169', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT170', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT171', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT172', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT173', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT174', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT175', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT176', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (20)
('PT677', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT678', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT679', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT680', 140.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT681', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT682', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT683', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT684', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT685', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT686', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT687', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT688', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT689', 180.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT690', 190.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT691', 140.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT692', 150.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT693', 85.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT694', 120.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT695', 115.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT696', 110.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (8)
('PT697', 45.00, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT697', 48.00, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT698', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT699', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT700', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT701', 52.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT702', 48.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT703', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT704', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (8)
('PT705', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT706', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT707', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT708', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT709', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT710', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT711', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT712', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (7)
('PT713', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT714', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT715', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT716', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT717', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT718', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT719', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (10)
('PT720', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT721', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT722', 10.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT723', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT724', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT725', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT726', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT727', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT728', 6.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT729', 9.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- PRECIOS DE COMPRA - TIENDA 2 (La Carnicería El Buen Corte)
-- Especializada en Carnes, Pescados y Lácteos
-- =====================================================

-- Carnes (15 productos) - Precios más altos por calidad premium
INSERT INTO precio_compra (id_particular, precio_compra, fecha_ini, fecha_fin) VALUES
('PT201', 85.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT202', 75.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT203', 90.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT204', 120.00, '2025-08-01 00:00:00', '2025-09-05 23:59:59'),
('PT204', 125.00, '2025-09-06 00:00:00', '2025-10-31 23:59:59'),
('PT205', 80.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT206', 85.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT207', 70.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT208', 65.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT209', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT210', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT211', 60.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT212', 70.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT213', 68.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT214', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT215', 75.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pescados (10 productos) - Premium
('PT216', 95.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT217', 180.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT218', 70.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT219', 140.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT220', 220.00, '2025-08-01 00:00:00', '2025-08-31 23:59:59'),
('PT220', 230.00, '2025-09-01 00:00:00', '2025-10-31 23:59:59'),
('PT221', 280.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT222', 190.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT223', 160.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT224', 200.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT225', 150.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (12)
('PT226', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT227', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT228', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT229', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT230', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT231', 39.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT232', 44.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT233', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT234', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT235', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT236', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT237', 41.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Verduras básicas (4)
('PT238', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT239', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT240', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT241', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (10 cervezas)
('PT730', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT731', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT732', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT733', 135.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT734', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT735', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT736', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT737', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT738', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT739', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (5)
('PT740', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT741', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT742', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT743', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT744', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (3)
('PT745', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT746', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT747', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras (5)
('PT748', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT749', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT750', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT751', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT752', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- PRECIOS DE COMPRA - TIENDA 3 (Súper La Esquina)
-- Tienda de barrio - Precios más bajos, márgenes menores
-- =====================================================

-- Botanas (10)
INSERT INTO precio_compra (id_particular, precio_compra, fecha_ini, fecha_fin) VALUES
('PT301', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT302', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT303', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT304', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT305', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT306', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT307', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT308', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT309', 24.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT310', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (10)
('PT311', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT312', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT313', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT314', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT315', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT316', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT317', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT318', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT319', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT320', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (10)
('PT321', 6.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT322', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT323', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT324', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT325', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT326', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT327', 2.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT328', 2.30, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT329', 5.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT330', 3.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (6)
('PT331', 27.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT332', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT333', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT334', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT335', 19.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT336', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (6)
('PT337', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT338', 34.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT339', 24.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT340', 29.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT341', 37.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT342', 41.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (8)
('PT343', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT344', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT345', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT346', 24.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT347', 27.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT348', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT349', 19.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT350', 19.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (8)
('PT351', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT352', 44.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT353', 21.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT354', 24.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT355', 34.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT356', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT357', 27.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT358', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (14 - 12 cervezas + 2 destilados)
('PT753', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT754', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT755', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT756', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT757', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT758', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT759', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT760', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT761', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT762', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT763', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT764', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT765', 175.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT766', 82.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (10 - alta demanda)
('PT767', 44.00, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT767', 47.00, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT768', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT769', 49.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT770', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT771', 51.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT772', 47.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT773', 41.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT774', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT775', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT776', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (6)
('PT777', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT778', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT779', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT780', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT781', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT782', 24.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (5)
('PT783', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT784', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT785', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT786', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT787', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (10 - alta rotación)
('PT788', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT789', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT790', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT791', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT792', 6.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT793', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT794', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT795', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT796', 5.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT797', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- PRECIOS DE COMPRA - TIENDA 4 (Todo para Ti)
-- Tienda equilibrada - Precios medios
-- =====================================================

-- Botanas (12)
INSERT INTO precio_compra (id_particular, precio_compra, fecha_ini, fecha_fin) VALUES
('PT401', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT402', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT403', 12.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT404', 13.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT405', 10.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT406', 10.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT407', 13.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT408', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT409', 19.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT410', 7.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT411', 17.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT412', 8.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (10)
('PT413', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT414', 17.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT415', 8.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT416', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT417', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT418', 7.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT419', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT420', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT421', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT422', 13.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (12)
('PT423', 6.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT424', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT425', 10.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT426', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT427', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT428', 12.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT429', 4.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT430', 2.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT431', 2.30, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT432', 2.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT433', 5.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT434', 3.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (7)
('PT435', 27.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT436', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT437', 15.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT438', 49.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT439', 17.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT440', 19.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT441', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (8)
('PT442', 17.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT443', 19.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT444', 34.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT445', 39.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT446', 24.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT447', 29.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT448', 37.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT449', 41.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (10)
('PT450', 7.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT451', 7.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT452', 8.30, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT453', 8.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT454', 24.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT455', 27.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT456', 17.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT457', 19.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT458', 21.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT459', 19.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (10)
('PT460', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT461', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT462', 44.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT463', 49.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT464', 21.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT465', 24.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT466', 34.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT467', 54.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT468', 27.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT469', 17.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (11 - 8 cervezas + 3 destilados)
('PT798', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT799', 21.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT800', 12.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT801', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT802', 10.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT803', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT804', 12.30, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT805', 12.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT806', 178.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT807', 188.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT808', 138.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (7)
('PT809', 44.50, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT809', 47.50, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT810', 42.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT811', 49.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT812', 34.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT813', 41.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT814', 38.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT815', 36.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (8)
('PT816', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT817', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT818', 10.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT819', 15.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT820', 13.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT821', 14.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT822', 15.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT823', 24.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (7)
('PT824', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT825', 13.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT826', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT827', 10.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT828', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT829', 12.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT830', 21.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (10)
('PT831', 8.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT832', 8.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT833', 9.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT834', 7.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT835', 6.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT836', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT837', 11.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT838', 7.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT839', 5.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT840', 8.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- PRECIOS DE COMPRA - TIENDA 5 (Mega Abarrotes La Providencia)
-- Mayorista - Buenos precios por volumen
-- =====================================================

-- Frutas (20)
INSERT INTO precio_compra (id_particular, precio_compra, fecha_ini, fecha_fin) VALUES
('PT501', 24.00, '2025-08-01 00:00:00', '2025-08-31 23:59:59'),
('PT501', 25.00, '2025-09-01 00:00:00', '2025-10-31 23:59:59'),
('PT502', 26.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT503', 17.50, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT503', 18.50, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT504', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT505', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT506', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT507', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT508', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT509', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT510', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT511', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT512', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT513', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT514', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT515', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT516', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT517', 19.00, '2025-08-01 00:00:00', '2025-09-20 23:59:59'),
('PT517', 21.00, '2025-09-21 00:00:00', '2025-10-31 23:59:59'),
('PT518', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT519', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT520', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Verduras (25)
('PT521', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT522', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT523', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT524', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT525', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT526', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT527', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT528', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT529', 5.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT530', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT531', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT532', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT533', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT534', 34.00, '2025-08-01 00:00:00', '2025-09-10 23:59:59'),
('PT534', 37.00, '2025-09-11 00:00:00', '2025-10-31 23:59:59'),
('PT535', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT536', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT537', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT538', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT539', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT540', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT541', 5.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT542', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT543', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT544', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT545', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Carnes (10 seleccionados)
('PT546', 82.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT547', 72.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT548', 118.00, '2025-08-01 00:00:00', '2025-09-05 23:59:59'),
('PT548', 123.00, '2025-09-06 00:00:00', '2025-10-31 23:59:59'),
('PT549', 78.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT550', 62.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT551', 52.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT552', 58.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT553', 68.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT554', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT555', 73.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (12)
('PT571', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT572', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT573', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT574', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT575', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT576', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT577', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT578', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT579', 29.00, '2025-08-01 00:00:00', '2025-09-25 23:59:59'),
('PT579', 31.00, '2025-09-26 00:00:00', '2025-10-31 23:59:59'),
('PT580', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT581', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT582', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Botanas (15)
('PT583', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT584', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT585', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT586', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT587', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT588', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT589', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT590', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT591', 19.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT592', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT593', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT594', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT595', 24.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT596', 21.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT597', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (10)
('PT598', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT599', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT600', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT601', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT602', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT603', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT604', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT605', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT606', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT607', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (12)
('PT608', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT609', 31.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT610', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT611', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT612', 48.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT613', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT614', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT615', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT616', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT617', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT618', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT619', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Dulces (15)
('PT620', 6.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT621', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT622', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT623', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT624', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT625', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT626', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT627', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT628', 4.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT629', 2.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT630', 2.30, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT631', 2.80, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT632', 5.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT633', 3.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT634', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Despensa (12)
('PT635', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT636', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT637', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT638', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT639', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT640', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT641', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT642', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT643', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT644', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT645', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT646', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Enlatados (15)
('PT647', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT648', 19.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT649', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT650', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT651', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT652', 19.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT653', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT654', 23.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT655', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT656', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT657', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT658', 17.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT659', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT660', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT661', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Limpieza (15)
('PT662', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT663', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT664', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT665', 48.00, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT665', 51.00, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT666', 36.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT667', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT668', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT669', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT670', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT671', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT672', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT673', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT674', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT675', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT676', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Alcohol (20)
('PT841', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT842', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT843', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT844', 135.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT845', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT846', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT847', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT848', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT849', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT850', 12.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT851', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT852', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT853', 175.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT854', 185.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT855', 135.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT856', 145.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT857', 82.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT858', 115.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT859', 110.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT860', 105.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Tabaco (10)
('PT861', 43.50, '2025-08-01 00:00:00', '2025-09-30 23:59:59'),
('PT861', 46.50, '2025-10-01 00:00:00', '2025-10-31 23:59:59'),
('PT862', 41.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT863', 48.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT864', 33.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT865', 50.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT866', 46.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT867', 40.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT868', 37.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT869', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT870', 36.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Galletas (8)
('PT871', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT872', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT873', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT874', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT875', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT876', 14.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT877', 15.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT878', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Pastelitos (7)
('PT879', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT880', 13.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT881', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT882', 10.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT883', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT884', 12.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT885', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Frituras adicionales (10)
('PT886', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT887', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT888', 9.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT889', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT890', 6.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT891', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT892', 11.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT893', 7.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT894', 5.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT895', 8.50, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- PRECIOS DE VENTA (AL PÚBLICO)
-- Aplicando márgenes según personalidad de cada tienda
-- =====================================================

-- =====================================================
-- TIENDA 1: Abarrotes San Miguel - Margen Alto (25-35%)
-- =====================================================

-- Frutas (Margen ~30%)
INSERT INTO precio_venta (id_particular, precio_venta, fecha_ini, fecha_fin) VALUES
('PT001', 35.00, '2025-08-01 00:00:00', '2025-08-31 23:59:59'),
('PT001', 36.00, '2025-09-01 00:00:00', '2025-10-31 23:59:59'),
('PT002', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT003', 25.00, '2025-08-01 00:00:00', '2025-09-15 23:59:59'),
('PT003', 26.50, '2025-09-16 00:00:00', '2025-10-31 23:59:59'),
('PT004', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT005', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT006', 60.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT007', 56.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT008', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT009', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT010', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT011', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT012', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT013', 43.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT014', 48.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT015', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT016', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT017', 28.00, '2025-08-01 00:00:00', '2025-09-20 23:59:59'),
('PT017', 30.00, '2025-09-21 00:00:00', '2025-10-31 23:59:59'),
('PT018', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT019', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT020', 75.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Verduras (Margen ~28%)
('PT021', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT022', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT023', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT024', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT025', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT026', 16.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT027', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT028', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT029', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT030', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT031', 27.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT032', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT033', 22.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT034', 48.00, '2025-08-01 00:00:00', '2025-09-10 23:59:59'),
('PT034', 52.00, '2025-09-11 00:00:00', '2025-10-31 23:59:59'),
('PT035', 54.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT036', 34.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT037', 75.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT038', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT039', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT040', 7.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT041', 8.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT042', 38.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT043', 40.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT044', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT045', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Lácteos (Margen ~27%)
('PT071', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT072', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT073', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT074', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT075', 46.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT076', 53.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT077', 59.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT078', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT079', 39.00, '2025-08-01 00:00:00', '2025-09-25 23:59:59'),
('PT079', 42.00, '2025-09-26 00:00:00', '2025-10-31 23:59:59'),
('PT080', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT081', 50.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT082', 55.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Botanas (Margen ~30%)
('PT083', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT084', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT085', 18.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT086', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT087', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT088', 15.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT089', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT090', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT091', 28.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT092', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT093', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT094', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT095', 35.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT096', 30.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT097', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Bebidas (Margen ~28%)
('PT098', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT099', 25.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT100', 13.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT101', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT102', 14.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT103', 11.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT104', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT105', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT106', 17.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT107', 19.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),

-- Panadería (Margen ~26%)
('PT108', 37.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT109', 42.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT110', 20.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT111', 21.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT112', 66.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT113', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT114', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT115', 29.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT116', 33.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT117', 24.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59'),
('PT118', 26.00, '2025-08-01 00:00:00', '2025-10-31 23:59:59');

-- =====================================================
-- SCRIPT 2: INVENTARIO Y VENTAS
-- Periodo: Agosto 1 - Octubre 31, 2025 (92 días)
-- =====================================================

-- =====================================================
-- INVENTARIO INICIAL (1 de agosto 2025)
-- =====================================================

-- TIENDA 1: Abarrotes San Miguel - Stock medio-alto
INSERT INTO inventario (id_particular, cantidad, fecha_registro) VALUES
-- Frutas (alta rotación) - 30-60 unidades
('PT001', 45, '2025-08-01 06:00:00'), ('PT002', 40, '2025-08-01 06:00:00'),
('PT003', 50, '2025-08-01 06:00:00'), ('PT004', 55, '2025-08-01 06:00:00'),
('PT005', 45, '2025-08-01 06:00:00'), ('PT006', 35, '2025-08-01 06:00:00'),
('PT007', 30, '2025-08-01 06:00:00'), ('PT008', 40, '2025-08-01 06:00:00'),
('PT009', 50, '2025-08-01 06:00:00'), ('PT010', 40, '2025-08-01 06:00:00'),
('PT011', 35, '2025-08-01 06:00:00'), ('PT012', 45, '2025-08-01 06:00:00'),
('PT013', 40, '2025-08-01 06:00:00'), ('PT014', 30, '2025-08-01 06:00:00'),
('PT015', 35, '2025-08-01 06:00:00'), ('PT016', 40, '2025-08-01 06:00:00'),
('PT017', 60, '2025-08-01 06:00:00'), ('PT018', 45, '2025-08-01 06:00:00'),
('PT019', 35, '2025-08-01 06:00:00'), ('PT020', 25, '2025-08-01 06:00:00'),

-- Verduras (alta rotación) - 40-80 unidades
('PT021', 70, '2025-08-01 06:00:00'), ('PT022', 65, '2025-08-01 06:00:00'),
('PT023', 80, '2025-08-01 06:00:00'), ('PT024', 50, '2025-08-01 06:00:00'),
('PT025', 75, '2025-08-01 06:00:00'), ('PT026', 70, '2025-08-01 06:00:00'),
('PT027', 45, '2025-08-01 06:00:00'), ('PT028', 40, '2025-08-01 06:00:00'),
('PT029', 60, '2025-08-01 06:00:00'), ('PT030', 50, '2025-08-01 06:00:00'),
('PT031', 45, '2025-08-01 06:00:00'), ('PT032', 55, '2025-08-01 06:00:00'),
('PT033', 50, '2025-08-01 06:00:00'), ('PT034', 65, '2025-08-01 06:00:00'),
('PT035', 60, '2025-08-01 06:00:00'), ('PT036', 50, '2025-08-01 06:00:00'),
('PT037', 55, '2025-08-01 06:00:00'), ('PT038', 70, '2025-08-01 06:00:00'),
('PT039', 80, '2025-08-01 06:00:00'), ('PT040', 75, '2025-08-01 06:00:00'),
('PT041', 65, '2025-08-01 06:00:00'), ('PT042', 45, '2025-08-01 06:00:00'),
('PT043', 40, '2025-08-01 06:00:00'), ('PT044', 55, '2025-08-01 06:00:00'),
('PT045', 60, '2025-08-01 06:00:00'),

-- Lácteos (rotación media) - 50-100 unidades
('PT071', 90, '2025-08-01 06:00:00'), ('PT072', 70, '2025-08-01 06:00:00'),
('PT073', 80, '2025-08-01 06:00:00'), ('PT074', 75, '2025-08-01 06:00:00'),
('PT075', 60, '2025-08-01 06:00:00'), ('PT076', 55, '2025-08-01 06:00:00'),
('PT077', 50, '2025-08-01 06:00:00'), ('PT078', 65, '2025-08-01 06:00:00'),
('PT079', 60, '2025-08-01 06:00:00'), ('PT080', 70, '2025-08-01 06:00:00'),
('PT081', 95, '2025-08-01 06:00:00'), ('PT082', 90, '2025-08-01 06:00:00'),

-- Botanas (alta rotación) - 80-150 unidades
('PT083', 120, '2025-08-01 06:00:00'), ('PT084', 110, '2025-08-01 06:00:00'),
('PT085', 100, '2025-08-01 06:00:00'), ('PT086', 130, '2025-08-01 06:00:00'),
('PT087', 115, '2025-08-01 06:00:00'), ('PT088', 125, '2025-08-01 06:00:00'),
('PT089', 95, '2025-08-01 06:00:00'), ('PT090', 90, '2025-08-01 06:00:00'),
('PT091', 80, '2025-08-01 06:00:00'), ('PT092', 100, '2025-08-01 06:00:00'),
('PT093', 95, '2025-08-01 06:00:00'), ('PT094', 85, '2025-08-01 06:00:00'),
('PT095', 70, '2025-08-01 06:00:00'), ('PT096', 75, '2025-08-01 06:00:00'),
('PT097', 105, '2025-08-01 06:00:00'),

-- Bebidas (muy alta rotación) - 100-200 unidades
('PT098', 180, '2025-08-01 06:00:00'), ('PT099', 150, '2025-08-01 06:00:00'),
('PT100', 160, '2025-08-01 06:00:00'), ('PT101', 170, '2025-08-01 06:00:00'),
('PT102', 140, '2025-08-01 06:00:00'), ('PT103', 190, '2025-08-01 06:00:00'),
('PT104', 110, '2025-08-01 06:00:00'), ('PT105', 105, '2025-08-01 06:00:00'),
('PT106', 120, '2025-08-01 06:00:00'), ('PT107', 115, '2025-08-01 06:00:00'),

-- Panadería (alta rotación) - 60-120 unidades
('PT108', 100, '2025-08-01 06:00:00'), ('PT109', 80, '2025-08-01 06:00:00'),
('PT110', 110, '2025-08-01 06:00:00'), ('PT111', 105, '2025-08-01 06:00:00'),
('PT112', 70, '2025-08-01 06:00:00'), ('PT113', 90, '2025-08-01 06:00:00'),
('PT114', 85, '2025-08-01 06:00:00'), ('PT115', 80, '2025-08-01 06:00:00'),
('PT116', 75, '2025-08-01 06:00:00'), ('PT117', 120, '2025-08-01 06:00:00'),
('PT118', 95, '2025-08-01 06:00:00'), ('PT119', 100, '2025-08-01 06:00:00'),

-- Dulces (alta rotación) - 100-180 unidades
('PT120', 150, '2025-08-01 06:00:00'), ('PT121', 120, '2025-08-01 06:00:00'),
('PT122', 130, '2025-08-01 06:00:00'), ('PT123', 125, '2025-08-01 06:00:00'),
('PT124', 115, '2025-08-01 06:00:00'), ('PT125', 110, '2025-08-01 06:00:00'),
('PT126', 105, '2025-08-01 06:00:00'), ('PT127', 140, '2025-08-01 06:00:00'),
('PT128', 160, '2025-08-01 06:00:00'), ('PT129', 170, '2025-08-01 06:00:00'),
('PT130', 180, '2025-08-01 06:00:00'), ('PT131', 165, '2025-08-01 06:00:00'),
('PT132', 145, '2025-08-01 06:00:00'), ('PT133', 155, '2025-08-01 06:00:00'),
('PT134', 135, '2025-08-01 06:00:00'),

-- Despensa (rotación media) - 60-100 unidades
('PT135', 95, '2025-08-01 06:00:00'), ('PT136', 90, '2025-08-01 06:00:00'),
('PT137', 85, '2025-08-01 06:00:00'), ('PT138', 75, '2025-08-01 06:00:00'),
('PT139', 70, '2025-08-01 06:00:00'), ('PT140', 70, '2025-08-01 06:00:00'),
('PT141', 80, '2025-08-01 06:00:00'), ('PT142', 65, '2025-08-01 06:00:00'),
('PT143', 60, '2025-08-01 06:00:00'), ('PT144', 60, '2025-08-01 06:00:00'),
('PT145', 70, '2025-08-01 06:00:00'), ('PT146', 75, '2025-08-01 06:00:00'),

-- Enlatados (baja rotación) - 40-80 unidades
('PT147', 70, '2025-08-01 06:00:00'), ('PT148', 65, '2025-08-01 06:00:00'),
('PT149', 55, '2025-08-01 06:00:00'), ('PT150', 60, '2025-08-01 06:00:00'),
('PT151', 65, '2025-08-01 06:00:00'), ('PT152', 70, '2025-08-01 06:00:00'),
('PT153', 50, '2025-08-01 06:00:00'), ('PT154', 45, '2025-08-01 06:00:00'),
('PT155', 60, '2025-08-01 06:00:00'), ('PT156', 60, '2025-08-01 06:00:00'),
('PT157', 55, '2025-08-01 06:00:00'), ('PT158', 50, '2025-08-01 06:00:00'),
('PT159', 40, '2025-08-01 06:00:00'), ('PT160', 45, '2025-08-01 06:00:00'),
('PT161', 40, '2025-08-01 06:00:00'),

-- Limpieza (rotación media) - 50-90 unidades
('PT162', 80, '2025-08-01 06:00:00'), ('PT163', 85, '2025-08-01 06:00:00'),
('PT164', 70, '2025-08-01 06:00:00'), ('PT165', 65, '2025-08-01 06:00:00'),
('PT166', 75, '2025-08-01 06:00:00'), ('PT167', 80, '2025-08-01 06:00:00'),
('PT168', 75, '2025-08-01 06:00:00'), ('PT169', 70, '2025-08-01 06:00:00'),
('PT170', 85, '2025-08-01 06:00:00'), ('PT171', 90, '2025-08-01 06:00:00'),
('PT172', 95, '2025-08-01 06:00:00'), ('PT173', 60, '2025-08-01 06:00:00'),
('PT174', 80, '2025-08-01 06:00:00'), ('PT175', 85, '2025-08-01 06:00:00'),
('PT176', 50, '2025-08-01 06:00:00'),

-- Alcohol (rotación alta) - 80-140 unidades
('PT677', 120, '2025-08-01 06:00:00'), ('PT678', 90, '2025-08-01 06:00:00'),
('PT679', 130, '2025-08-01 06:00:00'), ('PT680', 60, '2025-08-01 06:00:00'),
('PT681', 125, '2025-08-01 06:00:00'), ('PT682', 115, '2025-08-01 06:00:00'),
('PT683', 110, '2025-08-01 06:00:00'), ('PT684', 105, '2025-08-01 06:00:00'),
('PT685', 100, '2025-08-01 06:00:00'), ('PT686', 120, '2025-08-01 06:00:00'),
('PT687', 115, '2025-08-01 06:00:00'), ('PT688', 95, '2025-08-01 06:00:00'),
('PT689', 50, '2025-08-01 06:00:00'), ('PT690', 45, '2025-08-01 06:00:00'),
('PT691', 55, '2025-08-01 06:00:00'), ('PT692', 50, '2025-08-01 06:00:00'),
('PT693', 60, '2025-08-01 06:00:00'), ('PT694', 40, '2025-08-01 06:00:00'),
('PT695', 40, '2025-08-01 06:00:00'), ('PT696', 40, '2025-08-01 06:00:00'),

-- Tabaco (rotación muy alta) - 100-150 unidades
('PT697', 140, '2025-08-01 06:00:00'), ('PT698', 135, '2025-08-01 06:00:00'),
('PT699', 120, '2025-08-01 06:00:00'), ('PT700', 150, '2025-08-01 06:00:00'),
('PT701', 110, '2025-08-01 06:00:00'), ('PT702', 115, '2025-08-01 06:00:00'),
('PT703', 130, '2025-08-01 06:00:00'), ('PT704', 125, '2025-08-01 06:00:00'),

-- Galletas (rotación alta) - 70-120 unidades
('PT705', 100, '2025-08-01 06:00:00'), ('PT706', 110, '2025-08-01 06:00:00'),
('PT707', 115, '2025-08-01 06:00:00'), ('PT708', 95, '2025-08-01 06:00:00'),
('PT709', 105, '2025-08-01 06:00:00'), ('PT710', 100, '2025-08-01 06:00:00'),
('PT711', 90, '2025-08-01 06:00:00'), ('PT712', 75, '2025-08-01 06:00:00'),

-- Pastelitos (rotación muy alta) - 100-150 unidades
('PT713', 140, '2025-08-01 06:00:00'), ('PT714', 130, '2025-08-01 06:00:00'),
('PT715', 135, '2025-08-01 06:00:00'), ('PT716', 125, '2025-08-01 06:00:00'),
('PT717', 145, '2025-08-01 06:00:00'), ('PT718', 120, '2025-08-01 06:00:00'),
('PT719', 80, '2025-08-01 06:00:00'),

-- Frituras adicionales (rotación alta) - 90-130 unidades
('PT720', 120, '2025-08-01 06:00:00'), ('PT721', 115, '2025-08-01 06:00:00'),
('PT722', 110, '2025-08-01 06:00:00'), ('PT723', 125, '2025-08-01 06:00:00'),
('PT724', 130, '2025-08-01 06:00:00'), ('PT725', 105, '2025-08-01 06:00:00'),
('PT726', 100, '2025-08-01 06:00:00'), ('PT727', 115, '2025-08-01 06:00:00'),
('PT728', 120, '2025-08-01 06:00:00'), ('PT729', 110, '2025-08-01 06:00:00');

-- =====================================================
-- NOTA: Por razones de espacio, solo incluyo inventario 
-- inicial completo de Tienda 1. Las demás tiendas seguirían 
-- el mismo patrón ajustado a su volumen.
-- Para un dashboard funcional, este nivel de detalle es suficiente.
-- =====================================================

-- =====================================================
-- VENTAS - Muestra representativa de 3 meses
-- Patron realista según personalidad de cada tienda
-- =====================================================

-- TIENDA 1: Abarrotes San Miguel 
-- Ticket promedio: $200, 40-60 transacciones/día
-- Total aproximado: ~4,500 ventas en 3 meses

-- Agosto 2025 - Semana 1 (muestra)
INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
('V00001', '2025-08-01 08:15:00', 'EMP001', 'venta'),
('V00002', '2025-08-01 08:32:00', 'EMP002', 'venta'),
('V00003', '2025-08-01 09:10:00', 'EMP002', 'venta'),
('V00004', '2025-08-01 09:45:00', 'EMP001', 'venta'),
('V00005', '2025-08-01 10:20:00', 'EMP002', 'venta'),
('V00006', '2025-08-01 10:55:00', 'EMP001', 'venta'),
('V00007', '2025-08-01 11:30:00', 'EMP002', 'venta'),
('V00008', '2025-08-01 12:10:00', 'EMP001', 'venta'),
('V00009', '2025-08-01 13:20:00', 'EMP002', 'venta'),
('V00010', '2025-08-01 14:05:00', 'EMP003', 'venta');

-- Detalles de ventas (productos vendidos)
INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Venta 1: Compra mixta (frutas, bebidas, pan)
('V00001', 'PT001', 2), ('V00001', 'PT098', 3), ('V00001', 'PT108', 1),
-- Venta 2: Botanas y bebidas
('V00002', 'PT083', 4), ('V00002', 'PT086', 2), ('V00002', 'PT099', 1),
-- Venta 3: Despensa completa
('V00003', 'PT135', 3), ('V00003', 'PT142', 1), ('V00003', 'PT147', 2),
('V00003', 'PT071', 2), ('V00003', 'PT081', 1),
-- Venta 4: Verduras frescas
('V00004', 'PT021', 3), ('V00004', 'PT023', 2), ('V00004', 'PT025', 2),
('V00004', 'PT037', 1),
-- Venta 5: Dulces y pastelitos para niños
('V00005', 'PT120', 5), ('V00005', 'PT121', 3), ('V00005', 'PT713', 4),
('V00005', 'PT714', 2),
-- Venta 6: Limpieza del hogar
('V00006', 'PT162', 2), ('V00006', 'PT164', 1), ('V00006', 'PT167', 1),
('V00006', 'PT171', 2),
-- Venta 7: Cerveza para fin de semana
('V00007', 'PT677', 12), ('V00007', 'PT679', 6), ('V00007', 'PT088', 3),
-- Venta 8: Lácteos y pan
('V00008', 'PT071', 3), ('V00008', 'PT075', 1), ('V00008', 'PT081', 2),
('V00008', 'PT108', 1), ('V00008', 'PT110', 5),
-- Venta 9: Botanas variadas
('V00009', 'PT083', 2), ('V00009', 'PT084', 2), ('V00009', 'PT090', 1),
('V00009', 'PT720', 3), ('V00009', 'PT722', 2),
-- Venta 10: Frutas y verduras
('V00010', 'PT003', 3), ('V00010', 'PT004', 4), ('V00010', 'PT021', 2),
('V00010', 'PT026', 2), ('V00010', 'PT039', 2);

-- =====================================================
-- PATRÓN COMPLETO (simplificado para el ejemplo)
-- En una base real generarías ~15,000 ventas totales
-- distribuidas así:
-- - Tienda 1: ~4,500 ventas (50 ventas/día x 92 días)
-- - Tienda 2: ~2,500 ventas (27 ventas/día x 92 días)  
-- - Tienda 3: ~13,800 ventas (150 ventas/día x 92 días)
-- - Tienda 4: ~5,520 ventas (60 ventas/día x 92 días)
-- - Tienda 5: ~6,900 ventas (75 ventas/día x 92 días)
-- TOTAL: ~33,220 ventas en 3 meses
-- =====================================================

-- EJEMPLO: Más ventas distribuidas en el tiempo
INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- Agosto - Días adicionales
('V00011', '2025-08-01 15:30:00', 'EMP002', 'venta'),
('V00012', '2025-08-01 16:45:00', 'EMP001', 'venta'),
('V00013', '2025-08-01 17:20:00', 'EMP002', 'venta'),
('V00014', '2025-08-01 18:10:00', 'EMP003', 'venta'),
('V00015', '2025-08-01 19:00:00', 'EMP002', 'venta'),
-- Día 2
('V00016', '2025-08-02 08:20:00', 'EMP001', 'venta'),
('V00017', '2025-08-02 09:15:00', 'EMP002', 'venta'),
('V00018', '2025-08-02 10:30:00', 'EMP001', 'venta'),
('V00019', '2025-08-02 11:45:00', 'EMP002', 'venta'),
('V00020', '2025-08-02 13:10:00', 'EMP003', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Venta 11: Tabaco y bebidas
('V00011', 'PT697', 2), ('V00011', 'PT698', 1), ('V00011', 'PT098', 2),
-- Venta 12: Galletas y leche
('V00012', 'PT705', 2), ('V00012', 'PT707', 1), ('V00012', 'PT071', 2),
-- Venta 13: Enlatados
('V00013', 'PT147', 3), ('V00013', 'PT148', 2), ('V00013', 'PT150', 1),
-- Venta 14: Alcohol premium
('V00014', 'PT689', 1), ('V00014', 'PT694', 1), ('V00015', 'PT677', 6),
-- Venta 16-20: Ventas mixtas día 2
('V00016', 'PT003', 2), ('V00016', 'PT021', 3),
('V00017', 'PT083', 3), ('V00017', 'PT086', 2), ('V00017', 'PT098', 4),
('V00018', 'PT135', 2), ('V00018', 'PT142', 1), ('V00018', 'PT071', 2),
('V00019', 'PT713', 5), ('V00019', 'PT120', 8), ('V00019', 'PT122', 4),
('V00020', 'PT162', 1), ('V00020', 'PT164', 1), ('V00020', 'PT167', 2);

-- =====================================================
-- TIENDA 2: La Carnicería El Buen Corte
-- Ticket alto: $400-600, 25-35 transacciones/día
-- Fines de semana son 70% de las ventas
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- Viernes (día fuerte)
('V00100', '2025-08-01 10:00:00', 'EMP004', 'venta'),
('V00101', '2025-08-01 11:30:00', 'EMP005', 'venta'),
('V00102', '2025-08-01 13:00:00', 'EMP004', 'venta'),
('V00103', '2025-08-01 15:30:00', 'EMP006', 'venta'),
('V00104', '2025-08-01 17:00:00', 'EMP005', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Venta 100: Carne asada fin de semana
('V00100', 'PT204', 3), ('V00100', 'PT201', 2), ('V00100', 'PT730', 12),
-- Venta 101: Pescado fresco
('V00101', 'PT217', 1), ('V00101', 'PT220', 2), ('V00101', 'PT238', 1),
-- Venta 102: Carne para tacos
('V00102', 'PT202', 3), ('V00102', 'PT212', 2), ('V00102', 'PT239', 2),
-- Venta 103: Pollo y lácteos
('V00103', 'PT208', 3), ('V00103', 'PT209', 2), ('V00103', 'PT226', 3),
-- Venta 104: Compra premium
('V00104', 'PT204', 2), ('V00104', 'PT217', 1), ('V00104', 'PT221', 1);

-- =====================================================
-- TIENDA 3: Súper La Esquina (Iztapalapa)
-- Ticket bajo: $50, MUCHAS transacciones: 120-180/día
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- Flujo constante todo el día
('V00200', '2025-08-01 07:00:00', 'EMP007', 'venta'),
('V00201', '2025-08-01 07:15:00', 'EMP008', 'venta'),
('V00202', '2025-08-01 07:30:00', 'EMP007', 'venta'),
('V00203', '2025-08-01 07:45:00', 'EMP008', 'venta'),
('V00204', '2025-08-01 08:00:00', 'EMP007', 'venta'),
('V00205', '2025-08-01 08:15:00', 'EMP008', 'venta'),
('V00206', '2025-08-01 08:30:00', 'EMP007', 'venta'),
('V00207', '2025-08-01 08:45:00', 'EMP008', 'venta'),
('V00208', '2025-08-01 09:00:00', 'EMP007', 'venta'),
('V00209', '2025-08-01 09:15:00', 'EMP008', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Compras pequeñas típicas del barrio
('V00200', 'PT767', 1), ('V00200', 'PT311', 1), -- Cigarros y refresco
('V00201', 'PT301', 2), ('V00201', 'PT321', 3), -- Botanas y dulces
('V00202', 'PT343', 1), -- Solo una sopa
('V00203', 'PT311', 2), ('V00203', 'PT312', 1), -- Refrescos
('V00204', 'PT783', 3), ('V00204', 'PT321', 2), -- Pastelitos y dulces
('V00205', 'PT767', 1), ('V00205', 'PT768', 1), -- Cigarros
('V00206', 'PT301', 1), ('V00206', 'PT303', 1), ('V00206', 'PT311', 1), -- Botana-refresco
('V00207', 'PT337', 1), ('V00207', 'PT331', 1), -- Leche y pan
('V00208', 'PT753', 6), ('V00208', 'PT788', 2), -- Cerveza y botanas
('V00209', 'PT321', 5), ('V00209', 'PT322', 3); -- Dulces para niños

-- =====================================================
-- TIENDA 4: Todo para Ti (Querétaro)
-- Ticket medio: $125, 50-70 transacciones/día
-- 3 picos: desayuno, comida, cena
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- Pico desayuno
('V00300', '2025-08-01 07:30:00', 'EMP009', 'venta'),
('V00301', '2025-08-01 08:00:00', 'EMP010', 'venta'),
('V00302', '2025-08-01 08:30:00', 'EMP011', 'venta'),
-- Pico comida
('V00303', '2025-08-01 14:00:00', 'EMP009', 'venta'),
('V00304', '2025-08-01 14:30:00', 'EMP010', 'venta'),
-- Pico cena
('V00305', '2025-08-01 19:00:00', 'EMP011', 'venta'),
('V00306', '2025-08-01 19:30:00', 'EMP009', 'venta'),
('V00307', '2025-08-01 20:00:00', 'EMP010', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
('V00300', 'PT435', 1), ('V00300', 'PT442', 1), ('V00300', 'PT413', 2),
('V00301', 'PT401', 2), ('V00301', 'PT404', 2), ('V00301', 'PT413', 3),
('V00302', 'PT824', 3), ('V00302', 'PT825', 2), ('V00302', 'PT419', 1),
('V00303', 'PT450', 2), ('V00303', 'PT451', 2), ('V00303', 'PT442', 2),
('V00304', 'PT809', 2), ('V00304', 'PT798', 6), ('V00304', 'PT831', 2),
('V00305', 'PT435', 1), ('V00305', 'PT439', 1), ('V00305', 'PT442', 1),
('V00306', 'PT423', 4), ('V00306', 'PT424', 3), ('V00306', 'PT413', 2),
('V00307', 'PT816', 2), ('V00307', 'PT824', 3), ('V00307', 'PT419', 2);

-- =====================================================
-- TIENDA 5: Mega Abarrotes La Providencia (GDL)
-- Ticket alto: $300, 60-90 transacciones/día
-- Volumen masivo, picos matutinos y vespertinos
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- Pico matutino fuerte
('V00400', '2025-08-01 08:00:00', 'EMP012', 'venta'),
('V00401', '2025-08-01 08:30:00', 'EMP013', 'venta'),
('V00402', '2025-08-01 09:00:00', 'EMP014', 'venta'),
('V00403', '2025-08-01 09:30:00', 'EMP015', 'venta'),
('V00404', '2025-08-01 10:00:00', 'EMP012', 'venta'),
-- Pico vespertino
('V00405', '2025-08-01 18:00:00', 'EMP013', 'venta'),
('V00406', '2025-08-01 18:30:00', 'EMP014', 'venta'),
('V00407', '2025-08-01 19:00:00', 'EMP015', 'venta'),
('V00408', '2025-08-01 19:30:00', 'EMP012', 'venta'),
('V00409', '2025-08-01 20:00:00', 'EMP013', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Compras grandes de despensa
('V00400', 'PT501', 3), ('V00400', 'PT503', 4), ('V00400', 'PT521', 3),
('V00400', 'PT571', 4), ('V00400', 'PT598', 6), ('V00400', 'PT635', 3),
('V00401', 'PT546', 2), ('V00401', 'PT550', 2), ('V00401', 'PT841', 12),
('V00401', 'PT583', 4), ('V00401', 'PT586', 3),
('V00402', 'PT608', 2), ('V00402', 'PT620', 6), ('V00402', 'PT635', 3),
('V00402', 'PT642', 2), ('V00402', 'PT647', 4),
('V00403', 'PT662', 2), ('V00403', 'PT664', 1), ('V00403', 'PT667', 2),
('V00403', 'PT671', 3), ('V00403', 'PT673', 1),
('V00404', 'PT861', 3), ('V00404', 'PT862', 2), ('V00404', 'PT841', 6),
('V00405', 'PT871', 3), ('V00405', 'PT873', 2), ('V00405', 'PT879', 4),
('V00405', 'PT571', 3), ('V00405', 'PT598', 4),
('V00406', 'PT501', 2), ('V00406', 'PT504', 3), ('V00406', 'PT521', 2),
('V00406', 'PT523', 2), ('V00406', 'PT537', 1),
('V00407', 'PT583', 5), ('V00407', 'PT586', 4), ('V00407', 'PT598', 6),
('V00407', 'PT599', 2), ('V00407', 'PT886', 3),
('V00408', 'PT635', 2), ('V00408', 'PT642', 1), ('V00408', 'PT643', 1),
('V00408', 'PT647', 3), ('V00408', 'PT571', 2),
('V00409', 'PT841', 12), ('V00409', 'PT843', 6), ('V00409', 'PT853', 1),
('V00409', 'PT886', 3), ('V00409', 'PT888', 2);

-- =====================================================
-- VENTAS ADICIONALES - Septiembre y Octubre (Muestra)
-- =====================================================

-- Septiembre - Patrones similares con ligeras variaciones
INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
('V00500', '2025-09-01 09:00:00', 'EMP001', 'venta'),
('V00501', '2025-09-01 10:30:00', 'EMP002', 'venta'),
('V00502', '2025-09-01 12:00:00', 'EMP003', 'venta'),
('V00503', '2025-09-01 14:30:00', 'EMP001', 'venta'),
('V00504', '2025-09-01 16:00:00', 'EMP002', 'venta'),
('V00505', '2025-09-01 18:00:00', 'EMP003', 'venta'),
-- Tienda 3 - Septiembre
('V00600', '2025-09-15 08:00:00', 'EMP007', 'venta'),
('V00601', '2025-09-15 08:20:00', 'EMP008', 'venta'),
('V00602', '2025-09-15 08:40:00', 'EMP007', 'venta'),
('V00603', '2025-09-15 09:00:00', 'EMP008', 'venta'),
-- Tienda 5 - Septiembre (ventas grandes)
('V00700', '2025-09-20 10:00:00', 'EMP012', 'venta'),
('V00701', '2025-09-20 11:00:00', 'EMP013', 'venta'),
('V00702', '2025-09-20 12:00:00', 'EMP014', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
('V00500', 'PT001', 3), ('V00500', 'PT003', 2), ('V00500', 'PT098', 4),
('V00501', 'PT697', 2), ('V00501', 'PT677', 12), ('V00501', 'PT083', 3),
('V00502', 'PT135', 3), ('V00502', 'PT142', 2), ('V00502', 'PT147', 2),
('V00503', 'PT713', 4), ('V00503', 'PT120', 6), ('V00503', 'PT121', 4),
('V00504', 'PT162', 1), ('V00504', 'PT165', 1), ('V00504', 'PT167', 2),
('V00505', 'PT071', 3), ('V00505', 'PT075', 1), ('V00505', 'PT108', 2),
('V00600', 'PT767', 1), ('V00600', 'PT311', 1),
('V00601', 'PT301', 2), ('V00601', 'PT753', 6),
('V00602', 'PT343', 2), ('V00602', 'PT337', 1),
('V00603', 'PT783', 3), ('V00603', 'PT321', 4),
('V00700', 'PT501', 4), ('V00700', 'PT503', 3), ('V00700', 'PT571', 4),
('V00700', 'PT635', 3), ('V00700', 'PT642', 2), ('V00700', 'PT841', 12),
('V00701', 'PT546', 3), ('V00701', 'PT550', 2), ('V00701', 'PT583', 5),
('V00702', 'PT861', 3), ('V00702', 'PT871', 2), ('V00702', 'PT879', 4);

-- Octubre - Fin del periodo
INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
('V00800', '2025-10-01 09:00:00', 'EMP001', 'venta'),
('V00801', '2025-10-01 11:00:00', 'EMP002', 'venta'),
('V00802', '2025-10-01 13:00:00', 'EMP003', 'venta'),
('V00803', '2025-10-15 10:00:00', 'EMP001', 'venta'),
('V00804', '2025-10-15 12:00:00', 'EMP002', 'venta'),
('V00805', '2025-10-15 14:00:00', 'EMP003', 'venta'),
-- Halloween - aumento en dulces
('V00806', '2025-10-31 10:00:00', 'EMP001', 'venta'),
('V00807', '2025-10-31 11:00:00', 'EMP002', 'venta'),
('V00808', '2025-10-31 12:00:00', 'EMP003', 'venta'),
('V00809', '2025-10-31 15:00:00', 'EMP001', 'venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
('V00800', 'PT001', 2), ('V00800', 'PT017', 3), ('V00800', 'PT098', 3),
('V00801', 'PT083', 4), ('V00801', 'PT086', 3), ('V00801', 'PT099', 2),
('V00802', 'PT135', 2), ('V00802', 'PT142', 1), ('V00802', 'PT071', 2),
('V00803', 'PT697', 3), ('V00803', 'PT677', 12), ('V00803', 'PT689', 1),
('V00804', 'PT713', 5), ('V00804', 'PT120', 8), ('V00804', 'PT122', 6),
('V00805', 'PT162', 2), ('V00805', 'PT165', 1), ('V00805', 'PT171', 3),
-- Halloween - ventas especiales dulces
('V00806', 'PT120', 15), ('V00806', 'PT121', 12), ('V00806', 'PT122', 10),
('V00806', 'PT123', 10), ('V00806', 'PT126', 8),
('V00807', 'PT125', 12), ('V00807', 'PT126', 15), ('V00807', 'PT127', 20),
('V00807', 'PT128', 18), ('V00807', 'PT129', 25),
('V00808', 'PT130', 30), ('V00808', 'PT131', 25), ('V00808', 'PT132', 20),
('V00809', 'PT120', 12), ('V00809', 'PT121', 10), ('V00809', 'PT134', 8);

-- =====================================================
-- COMPRAS DE INVENTARIO (reabastecimiento)
-- Las tiendas compran productos a proveedores
-- =====================================================

-- NOTA: tipo = 'compra' para diferenciar de ventas
INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- Reabastecimiento semanal Tienda 1
('C00001', '2025-08-05 07:00:00', 'EMP001', 'compra'),
('C00002', '2025-08-12 07:00:00', 'EMP001', 'compra'),
('C00003', '2025-08-19 07:00:00', 'EMP001', 'compra'),
('C00004', '2025-08-26 07:00:00', 'EMP001', 'compra'),
-- Septiembre
('C00005', '2025-09-02 07:00:00', 'EMP001', 'compra'),
('C00006', '2025-09-09 07:00:00', 'EMP001', 'compra'),
('C00007', '2025-09-16 07:00:00', 'EMP001', 'compra'),
('C00008', '2025-09-23 07:00:00', 'EMP001', 'compra'),
('C00009', '2025-09-30 07:00:00', 'EMP001', 'compra'),
-- Octubre
('C00010', '2025-10-07 07:00:00', 'EMP001', 'compra'),
('C00011', '2025-10-14 07:00:00', 'EMP001', 'compra'),
('C00012', '2025-10-21 07:00:00', 'EMP001', 'compra'),
('C00013', '2025-10-28 07:00:00', 'EMP001', 'compra');

-- Detalles de compras (reabastecimiento)
INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Compra 1: Reposición frutas y verduras
('C00001', 'PT001', 50), ('C00001', 'PT002', 45), ('C00001', 'PT003', 60),
('C00001', 'PT021', 80), ('C00001', 'PT023', 90), ('C00001', 'PT025', 85),
-- Compra 1: Bebidas y botanas
('C00001', 'PT098', 200), ('C00001', 'PT099', 150), ('C00001', 'PT083', 130),
('C00001', 'PT086', 140), ('C00001', 'PT088', 135),
-- Compra 1: Lácteos
('C00001', 'PT071', 100), ('C00001', 'PT075', 70), ('C00001', 'PT081', 110),
-- Compra 2: Similar patrón
('C00002', 'PT001', 50), ('C00002', 'PT003', 60), ('C00002', 'PT021', 80),
('C00002', 'PT098', 200), ('C00002', 'PT083', 130), ('C00002', 'PT071', 100);

-- =====================================================
-- SCRIPT 3: INVENTARIO INICIAL TIENDAS 2, 3, 4 y 5
-- Fecha: 1 de Agosto 2025, 6:00 AM
-- =====================================================

-- =====================================================
-- TIENDA 2: La Carnicería El Buen Corte
-- Especializada - Solo carnes, pescados, lácteos y básicos
-- Stock medio para productos premium
-- =====================================================

INSERT INTO inventario (id_particular, cantidad, fecha_registro) VALUES
-- Carnes (15 productos) - Stock medio por ser premium
('PT201', 35, '2025-08-01 06:00:00'), ('PT202', 40, '2025-08-01 06:00:00'),
('PT203', 30, '2025-08-01 06:00:00'), ('PT204', 25, '2025-08-01 06:00:00'),
('PT205', 35, '2025-08-01 06:00:00'), ('PT206', 30, '2025-08-01 06:00:00'),
('PT207', 40, '2025-08-01 06:00:00'), ('PT208', 45, '2025-08-01 06:00:00'),
('PT209', 50, '2025-08-01 06:00:00'), ('PT210', 50, '2025-08-01 06:00:00'),
('PT211', 40, '2025-08-01 06:00:00'), ('PT212', 35, '2025-08-01 06:00:00'),
('PT213', 30, '2025-08-01 06:00:00'), ('PT214', 45, '2025-08-01 06:00:00'),
('PT215', 30, '2025-08-01 06:00:00'),

-- Pescados (10 productos) - Stock bajo por frescura
('PT216', 20, '2025-08-01 06:00:00'), ('PT217', 15, '2025-08-01 06:00:00'),
('PT218', 25, '2025-08-01 06:00:00'), ('PT219', 18, '2025-08-01 06:00:00'),
('PT220', 12, '2025-08-01 06:00:00'), ('PT221', 10, '2025-08-01 06:00:00'),
('PT222', 15, '2025-08-01 06:00:00'), ('PT223', 18, '2025-08-01 06:00:00'),
('PT224', 14, '2025-08-01 06:00:00'), ('PT225', 20, '2025-08-01 06:00:00'),

-- Lácteos (12 productos)
('PT226', 70, '2025-08-01 06:00:00'), ('PT227', 55, '2025-08-01 06:00:00'),
('PT228', 60, '2025-08-01 06:00:00'), ('PT229', 60, '2025-08-01 06:00:00'),
('PT230', 45, '2025-08-01 06:00:00'), ('PT231', 40, '2025-08-01 06:00:00'),
('PT232', 35, '2025-08-01 06:00:00'), ('PT233', 50, '2025-08-01 06:00:00'),
('PT234', 45, '2025-08-01 06:00:00'), ('PT235', 55, '2025-08-01 06:00:00'),
('PT236', 75, '2025-08-01 06:00:00'), ('PT237', 70, '2025-08-01 06:00:00'),

-- Verduras básicas (4 productos)
('PT238', 50, '2025-08-01 06:00:00'), ('PT239', 60, '2025-08-01 06:00:00'),
('PT240', 55, '2025-08-01 06:00:00'), ('PT241', 45, '2025-08-01 06:00:00'),

-- Alcohol (10 cervezas)
('PT730', 90, '2025-08-01 06:00:00'), ('PT731', 60, '2025-08-01 06:00:00'),
('PT732', 95, '2025-08-01 06:00:00'), ('PT733', 40, '2025-08-01 06:00:00'),
('PT734', 90, '2025-08-01 06:00:00'), ('PT735', 85, '2025-08-01 06:00:00'),
('PT736', 80, '2025-08-01 06:00:00'), ('PT737', 85, '2025-08-01 06:00:00'),
('PT738', 90, '2025-08-01 06:00:00'), ('PT739', 70, '2025-08-01 06:00:00'),

-- Galletas (5 productos)
('PT740', 60, '2025-08-01 06:00:00'), ('PT741', 65, '2025-08-01 06:00:00'),
('PT742', 55, '2025-08-01 06:00:00'), ('PT743', 45, '2025-08-01 06:00:00'),
('PT744', 60, '2025-08-01 06:00:00'),

-- Pastelitos (3 productos)
('PT745', 70, '2025-08-01 06:00:00'), ('PT746', 65, '2025-08-01 06:00:00'),
('PT747', 50, '2025-08-01 06:00:00'),

-- Frituras (5 productos)
('PT748', 75, '2025-08-01 06:00:00'), ('PT749', 75, '2025-08-01 06:00:00'),
('PT750', 80, '2025-08-01 06:00:00'), ('PT751', 70, '2025-08-01 06:00:00'),
('PT752', 75, '2025-08-01 06:00:00');

-- =====================================================
-- TIENDA 3: Súper La Esquina (Iztapalapa)
-- Tienda de barrio - ALTA rotación, stock moderado
-- Productos económicos de uso diario
-- =====================================================

INSERT INTO inventario (id_particular, cantidad, fecha_registro) VALUES
-- Botanas (10 productos) - Alta rotación
('PT301', 150, '2025-08-01 06:00:00'), ('PT302', 145, '2025-08-01 06:00:00'),
('PT303', 130, '2025-08-01 06:00:00'), ('PT304', 140, '2025-08-01 06:00:00'),
('PT305', 135, '2025-08-01 06:00:00'), ('PT306', 120, '2025-08-01 06:00:00'),
('PT307', 155, '2025-08-01 06:00:00'), ('PT308', 110, '2025-08-01 06:00:00'),
('PT309', 100, '2025-08-01 06:00:00'), ('PT310', 160, '2025-08-01 06:00:00'),

-- Bebidas (10 productos) - MUY alta rotación
('PT311', 200, '2025-08-01 06:00:00'), ('PT312', 180, '2025-08-01 06:00:00'),
('PT313', 190, '2025-08-01 06:00:00'), ('PT314', 185, '2025-08-01 06:00:00'),
('PT315', 175, '2025-08-01 06:00:00'), ('PT316', 210, '2025-08-01 06:00:00'),
('PT317', 140, '2025-08-01 06:00:00'), ('PT318', 135, '2025-08-01 06:00:00'),
('PT319', 150, '2025-08-01 06:00:00'), ('PT320', 145, '2025-08-01 06:00:00'),

-- Dulces (10 productos) - Alta rotación
('PT321', 180, '2025-08-01 06:00:00'), ('PT322', 160, '2025-08-01 06:00:00'),
('PT323', 155, '2025-08-01 06:00:00'), ('PT324', 140, '2025-08-01 06:00:00'),
('PT325', 170, '2025-08-01 06:00:00'), ('PT326', 190, '2025-08-01 06:00:00'),
('PT327', 200, '2025-08-01 06:00:00'), ('PT328', 210, '2025-08-01 06:00:00'),
('PT329', 175, '2025-08-01 06:00:00'), ('PT330', 185, '2025-08-01 06:00:00'),

-- Panadería (6 productos)
('PT331', 120, '2025-08-01 06:00:00'), ('PT332', 140, '2025-08-01 06:00:00'),
('PT333', 135, '2025-08-01 06:00:00'), ('PT334', 150, '2025-08-01 06:00:00'),
('PT335', 130, '2025-08-01 06:00:00'), ('PT336', 125, '2025-08-01 06:00:00'),

-- Lácteos (6 productos)
('PT337', 100, '2025-08-01 06:00:00'), ('PT338', 70, '2025-08-01 06:00:00'),
('PT339', 80, '2025-08-01 06:00:00'), ('PT340', 75, '2025-08-01 06:00:00'),
('PT341', 95, '2025-08-01 06:00:00'), ('PT342', 90, '2025-08-01 06:00:00'),

-- Despensa (8 productos)
('PT343', 110, '2025-08-01 06:00:00'), ('PT344', 105, '2025-08-01 06:00:00'),
('PT345', 100, '2025-08-01 06:00:00'), ('PT346', 85, '2025-08-01 06:00:00'),
('PT347', 80, '2025-08-01 06:00:00'), ('PT348', 90, '2025-08-01 06:00:00'),
('PT349', 85, '2025-08-01 06:00:00'), ('PT350', 80, '2025-08-01 06:00:00'),

-- Limpieza (8 productos)
('PT351', 95, '2025-08-01 06:00:00'), ('PT352', 75, '2025-08-01 06:00:00'),
('PT353', 90, '2025-08-01 06:00:00'), ('PT354', 85, '2025-08-01 06:00:00'),
('PT355', 100, '2025-08-01 06:00:00'), ('PT356', 110, '2025-08-01 06:00:00'),
('PT357', 80, '2025-08-01 06:00:00'), ('PT358', 90, '2025-08-01 06:00:00'),

-- Alcohol (14 productos) - Alta demanda
('PT753', 130, '2025-08-01 06:00:00'), ('PT754', 90, '2025-08-01 06:00:00'),
('PT755', 135, '2025-08-01 06:00:00'), ('PT756', 125, '2025-08-01 06:00:00'),
('PT757', 120, '2025-08-01 06:00:00'), ('PT758', 115, '2025-08-01 06:00:00'),
('PT759', 125, '2025-08-01 06:00:00'), ('PT760', 120, '2025-08-01 06:00:00'),
('PT761', 130, '2025-08-01 06:00:00'), ('PT762', 125, '2025-08-01 06:00:00'),
('PT763', 130, '2025-08-01 06:00:00'), ('PT764', 125, '2025-08-01 06:00:00'),
('PT765', 55, '2025-08-01 06:00:00'), ('PT766', 65, '2025-08-01 06:00:00'),

-- Tabaco (10 productos) - MUY alta rotación
('PT767', 180, '2025-08-01 06:00:00'), ('PT768', 175, '2025-08-01 06:00:00'),
('PT769', 160, '2025-08-01 06:00:00'), ('PT770', 190, '2025-08-01 06:00:00'),
('PT771', 150, '2025-08-01 06:00:00'), ('PT772', 155, '2025-08-01 06:00:00'),
('PT773', 165, '2025-08-01 06:00:00'), ('PT774', 170, '2025-08-01 06:00:00'),
('PT775', 175, '2025-08-01 06:00:00'), ('PT776', 165, '2025-08-01 06:00:00'),

-- Galletas (6 productos)
('PT777', 110, '2025-08-01 06:00:00'), ('PT778', 120, '2025-08-01 06:00:00'),
('PT779', 125, '2025-08-01 06:00:00'), ('PT780', 105, '2025-08-01 06:00:00'),
('PT781', 100, '2025-08-01 06:00:00'), ('PT782', 85, '2025-08-01 06:00:00'),

-- Pastelitos (5 productos)
('PT783', 145, '2025-08-01 06:00:00'), ('PT784', 140, '2025-08-01 06:00:00'),
('PT785', 135, '2025-08-01 06:00:00'), ('PT786', 150, '2025-08-01 06:00:00'),
('PT787', 130, '2025-08-01 06:00:00'),

-- Frituras adicionales (10 productos)
('PT788', 140, '2025-08-01 06:00:00'), ('PT789', 135, '2025-08-01 06:00:00'),
('PT790', 130, '2025-08-01 06:00:00'), ('PT791', 145, '2025-08-01 06:00:00'),
('PT792', 150, '2025-08-01 06:00:00'), ('PT793', 125, '2025-08-01 06:00:00'),
('PT794', 120, '2025-08-01 06:00:00'), ('PT795', 140, '2025-08-01 06:00:00'),
('PT796', 145, '2025-08-01 06:00:00'), ('PT797', 135, '2025-08-01 06:00:00');

-- =====================================================
-- TIENDA 4: Todo para Ti (Querétaro)
-- Tienda equilibrada - Stock medio, variedad amplia
-- =====================================================

INSERT INTO inventario (id_particular, cantidad, fecha_registro) VALUES
-- Botanas (12 productos)
('PT401', 105, '2025-08-01 06:00:00'), ('PT402', 100, '2025-08-01 06:00:00'),
('PT403', 95, '2025-08-01 06:00:00'), ('PT404', 110, '2025-08-01 06:00:00'),
('PT405', 100, '2025-08-01 06:00:00'), ('PT406', 105, '2025-08-01 06:00:00'),
('PT407', 90, '2025-08-01 06:00:00'), ('PT408', 85, '2025-08-01 06:00:00'),
('PT409', 75, '2025-08-01 06:00:00'), ('PT410', 95, '2025-08-01 06:00:00'),
('PT411', 80, '2025-08-01 06:00:00'), ('PT412', 100, '2025-08-01 06:00:00'),

-- Bebidas (10 productos)
('PT413', 160, '2025-08-01 06:00:00'), ('PT414', 140, '2025-08-01 06:00:00'),
('PT415', 150, '2025-08-01 06:00:00'), ('PT416', 155, '2025-08-01 06:00:00'),
('PT417', 145, '2025-08-01 06:00:00'), ('PT418', 170, '2025-08-01 06:00:00'),
('PT419', 105, '2025-08-01 06:00:00'), ('PT420', 100, '2025-08-01 06:00:00'),
('PT421', 115, '2025-08-01 06:00:00'), ('PT422', 110, '2025-08-01 06:00:00'),

-- Dulces (12 productos)
('PT423', 135, '2025-08-01 06:00:00'), ('PT424', 115, '2025-08-01 06:00:00'),
('PT425', 120, '2025-08-01 06:00:00'), ('PT426', 125, '2025-08-01 06:00:00'),
('PT427', 120, '2025-08-01 06:00:00'), ('PT428', 110, '2025-08-01 06:00:00'),
('PT429', 150, '2025-08-01 06:00:00'), ('PT430', 160, '2025-08-01 06:00:00'),
('PT431', 170, '2025-08-01 06:00:00'), ('PT432', 155, '2025-08-01 06:00:00'),
('PT433', 140, '2025-08-01 06:00:00'), ('PT434', 145, '2025-08-01 06:00:00'),

-- Panadería (7 productos)
('PT435', 95, '2025-08-01 06:00:00'), ('PT436', 105, '2025-08-01 06:00:00'),
('PT437', 100, '2025-08-01 06:00:00'), ('PT438', 70, '2025-08-01 06:00:00'),
('PT439', 110, '2025-08-01 06:00:00'), ('PT440', 90, '2025-08-01 06:00:00'),
('PT441', 100, '2025-08-01 06:00:00'),

-- Lácteos (8 productos)
('PT442', 85, '2025-08-01 06:00:00'), ('PT443', 75, '2025-08-01 06:00:00'),
('PT444', 60, '2025-08-01 06:00:00'), ('PT445', 55, '2025-08-01 06:00:00'),
('PT446', 70, '2025-08-01 06:00:00'), ('PT447', 65, '2025-08-01 06:00:00'),
('PT448', 90, '2025-08-01 06:00:00'), ('PT449', 85, '2025-08-01 06:00:00'),

-- Despensa (10 productos)
('PT450', 90, '2025-08-01 06:00:00'), ('PT451', 85, '2025-08-01 06:00:00'),
('PT452', 80, '2025-08-01 06:00:00'), ('PT453', 75, '2025-08-01 06:00:00'),
('PT454', 70, '2025-08-01 06:00:00'), ('PT455', 65, '2025-08-01 06:00:00'),
('PT456', 75, '2025-08-01 06:00:00'), ('PT457', 70, '2025-08-01 06:00:00'),
('PT458', 65, '2025-08-01 06:00:00'), ('PT459', 70, '2025-08-01 06:00:00'),

-- Limpieza (10 productos)
('PT460', 80, '2025-08-01 06:00:00'), ('PT461', 85, '2025-08-01 06:00:00'),
('PT462', 65, '2025-08-01 06:00:00'), ('PT463', 60, '2025-08-01 06:00:00'),
('PT464', 75, '2025-08-01 06:00:00'), ('PT465', 70, '2025-08-01 06:00:00'),
('PT466', 85, '2025-08-01 06:00:00'), ('PT467', 55, '2025-08-01 06:00:00'),
('PT468', 75, '2025-08-01 06:00:00'), ('PT469', 80, '2025-08-01 06:00:00'),

-- Alcohol (11 productos)
('PT798', 110, '2025-08-01 06:00:00'), ('PT799', 80, '2025-08-01 06:00:00'),
('PT800', 115, '2025-08-01 06:00:00'), ('PT801', 110, '2025-08-01 06:00:00'),
('PT802', 105, '2025-08-01 06:00:00'), ('PT803', 100, '2025-08-01 06:00:00'),
('PT804', 110, '2025-08-01 06:00:00'), ('PT805', 105, '2025-08-01 06:00:00'),
('PT806', 45, '2025-08-01 06:00:00'), ('PT807', 40, '2025-08-01 06:00:00'),
('PT808', 50, '2025-08-01 06:00:00'),

-- Tabaco (7 productos)
('PT809', 130, '2025-08-01 06:00:00'), ('PT810', 125, '2025-08-01 06:00:00'),
('PT811', 115, '2025-08-01 06:00:00'), ('PT812', 140, '2025-08-01 06:00:00'),
('PT813', 120, '2025-08-01 06:00:00'), ('PT814', 125, '2025-08-01 06:00:00'),
('PT815', 130, '2025-08-01 06:00:00'),

-- Galletas (8 productos)
('PT816', 95, '2025-08-01 06:00:00'), ('PT817', 105, '2025-08-01 06:00:00'),
('PT818', 110, '2025-08-01 06:00:00'), ('PT819', 90, '2025-08-01 06:00:00'),
('PT820', 100, '2025-08-01 06:00:00'), ('PT821', 95, '2025-08-01 06:00:00'),
('PT822', 85, '2025-08-01 06:00:00'), ('PT823', 70, '2025-08-01 06:00:00'),

-- Pastelitos (7 productos)
('PT824', 130, '2025-08-01 06:00:00'), ('PT825', 125, '2025-08-01 06:00:00'),
('PT826', 120, '2025-08-01 06:00:00'), ('PT827', 115, '2025-08-01 06:00:00'),
('PT828', 135, '2025-08-01 06:00:00'), ('PT829', 110, '2025-08-01 06:00:00'),
('PT830', 75, '2025-08-01 06:00:00'),

-- Frituras adicionales (10 productos)
('PT831', 115, '2025-08-01 06:00:00'), ('PT832', 110, '2025-08-01 06:00:00'),
('PT833', 105, '2025-08-01 06:00:00'), ('PT834', 120, '2025-08-01 06:00:00'),
('PT835', 125, '2025-08-01 06:00:00'), ('PT836', 100, '2025-08-01 06:00:00'),
('PT837', 95, '2025-08-01 06:00:00'), ('PT838', 110, '2025-08-01 06:00:00'),
('PT839', 115, '2025-08-01 06:00:00'), ('PT840', 105, '2025-08-01 06:00:00');

-- =====================================================
-- TIENDA 5: Mega Abarrotes La Providencia (GDL)
-- Mayorista - Stock ALTO, variedad completa
-- =====================================================

INSERT INTO inventario (id_particular, cantidad, fecha_registro) VALUES
-- Frutas (20 productos) - Stock alto
('PT501', 60, '2025-08-01 06:00:00'), ('PT502', 55, '2025-08-01 06:00:00'),
('PT503', 70, '2025-08-01 06:00:00'), ('PT504', 75, '2025-08-01 06:00:00'),
('PT505', 60, '2025-08-01 06:00:00'), ('PT506', 50, '2025-08-01 06:00:00'),
('PT507', 45, '2025-08-01 06:00:00'), ('PT508', 55, '2025-08-01 06:00:00'),
('PT509', 70, '2025-08-01 06:00:00'), ('PT510', 55, '2025-08-01 06:00:00'),
('PT511', 50, '2025-08-01 06:00:00'), ('PT512', 60, '2025-08-01 06:00:00'),
('PT513', 55, '2025-08-01 06:00:00'), ('PT514', 45, '2025-08-01 06:00:00'),
('PT515', 50, '2025-08-01 06:00:00'), ('PT516', 55, '2025-08-01 06:00:00'),
('PT517', 80, '2025-08-01 06:00:00'), ('PT518', 60, '2025-08-01 06:00:00'),
('PT519', 50, '2025-08-01 06:00:00'), ('PT520', 35, '2025-08-01 06:00:00'),

-- Verduras (25 productos) - Stock alto
('PT521', 90, '2025-08-01 06:00:00'), ('PT522', 85, '2025-08-01 06:00:00'),
('PT523', 100, '2025-08-01 06:00:00'), ('PT524', 70, '2025-08-01 06:00:00'),
('PT525', 95, '2025-08-01 06:00:00'), ('PT526', 90, '2025-08-01 06:00:00'),
('PT527', 60, '2025-08-01 06:00:00'), ('PT528', 55, '2025-08-01 06:00:00'),
('PT529', 80, '2025-08-01 06:00:00'), ('PT530', 70, '2025-08-01 06:00:00'),
('PT531', 65, '2025-08-01 06:00:00'), ('PT532', 75, '2025-08-01 06:00:00'),
('PT533', 70, '2025-08-01 06:00:00'), ('PT534', 85, '2025-08-01 06:00:00'),
('PT535', 80, '2025-08-01 06:00:00'), ('PT536', 70, '2025-08-01 06:00:00'),
('PT537', 75, '2025-08-01 06:00:00'), ('PT538', 90, '2025-08-01 06:00:00'),
('PT539', 100, '2025-08-01 06:00:00'), ('PT540', 95, '2025-08-01 06:00:00'),
('PT541', 85, '2025-08-01 06:00:00'), ('PT542', 65, '2025-08-01 06:00:00'),
('PT543', 60, '2025-08-01 06:00:00'), ('PT544', 75, '2025-08-01 06:00:00'),
('PT545', 80, '2025-08-01 06:00:00'); 



-- =====================================================
-- VENTAS COMPLETAS - 1 SEMANA REALISTA
-- Del 1 al 7 de Agosto 2025 (Viernes a Jueves)
-- Total: 224 ventas con detalles realistas
-- =====================================================

-- =====================================================
-- TIENDA 1: Abarrotes San Miguel (CDMX - Narvarte)
-- 5 ventas/día × 7 días = 35 ventas
-- Patrón: Picos en mañana y tarde, ticket promedio $200
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- VIERNES 1 Agosto (día moderado)
('V10001','2025-08-01 08:30:00','EMP001','venta'),
('V10002','2025-08-01 11:15:00','EMP002','venta'),
('V10003','2025-08-01 14:00:00','EMP003','venta'),
('V10004','2025-08-01 18:00:00','EMP001','venta'),
('V10005','2025-08-01 20:30:00','EMP002','venta'),
-- SÁBADO 2 Agosto (día fuerte)
('V10006','2025-08-02 09:00:00','EMP001','venta'),
('V10007','2025-08-02 11:30:00','EMP002','venta'),
('V10008','2025-08-02 13:45:00','EMP003','venta'),
('V10009','2025-08-02 17:00:00','EMP001','venta'),
('V10010','2025-08-02 19:30:00','EMP002','venta'),
-- DOMINGO 3 Agosto (día fuerte mañana)
('V10011','2025-08-03 10:00:00','EMP003','venta'),
('V10012','2025-08-03 12:00:00','EMP001','venta'),
('V10013','2025-08-03 14:30:00','EMP002','venta'),
('V10014','2025-08-03 17:00:00','EMP003','venta'),
('V10015','2025-08-03 19:00:00','EMP001','venta'),
-- LUNES 4 Agosto (día normal)
('V10016','2025-08-04 08:00:00','EMP002','venta'),
('V10017','2025-08-04 10:45:00','EMP003','venta'),
('V10018','2025-08-04 13:30:00','EMP001','venta'),
('V10019','2025-08-04 17:30:00','EMP002','venta'),
('V10020','2025-08-04 20:00:00','EMP003','venta'),
-- MARTES 5 Agosto (día normal)
('V10021','2025-08-05 08:15:00','EMP001','venta'),
('V10022','2025-08-05 11:00:00','EMP002','venta'),
('V10023','2025-08-05 14:15:00','EMP003','venta'),
('V10024','2025-08-05 17:45:00','EMP001','venta'),
('V10025','2025-08-05 20:15:00','EMP002','venta'),
-- MIÉRCOLES 6 Agosto (día normal)
('V10026','2025-08-06 08:30:00','EMP003','venta'),
('V10027','2025-08-06 10:30:00','EMP001','venta'),
('V10028','2025-08-06 13:00:00','EMP002','venta'),
('V10029','2025-08-06 18:00:00','EMP003','venta'),
('V10030','2025-08-06 20:30:00','EMP001','venta'),
-- JUEVES 7 Agosto (día normal)
('V10031','2025-08-07 08:00:00','EMP002','venta'),
('V10032','2025-08-07 11:15:00','EMP003','venta'),
('V10033','2025-08-07 13:45:00','EMP001','venta'),
('V10034','2025-08-07 17:15:00','EMP002','venta'),
('V10035','2025-08-07 19:45:00','EMP003','venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Viernes 1: Compras de fin de semana preparándose
('V10001','PT001',3),('V10001','PT003',2),('V10001','PT098',4),('V10001','PT021',2),
('V10002','PT677',12),('V10002','PT083',5),('V10002','PT088',3),
('V10003','PT135',3),('V10003','PT142',2),('V10003','PT147',2),('V10003','PT071',2),
('V10004','PT713',5),('V10004','PT714',3),('V10004','PT120',8),('V10004','PT122',6),
('V10005','PT162',2),('V10005','PT164',1),('V10005','PT167',2),('V10005','PT108',2),
-- Sábado 2: Compras grandes familiares
('V10006','PT001',4),('V10006','PT003',3),('V10006','PT017',4),('V10006','PT021',4),('V10006','PT023',3),
('V10007','PT697',3),('V10007','PT677',18),('V10007','PT679',12),('V10007','PT689',1),
('V10008','PT071',4),('V10008','PT075',2),('V10008','PT081',3),('V10008','PT108',2),('V10008','PT110',6),
('V10009','PT083',6),('V10009','PT086',4),('V10009','PT088',3),('V10009','PT098',6),('V10009','PT099',2),
('V10010','PT713',6),('V10010','PT714',4),('V10010','PT720',4),('V10010','PT120',10),
-- Domingo 3: Compras matutinas y comida familiar
('V10011','PT001',2),('V10011','PT021',3),('V10011','PT037',2),('V10011','PT098',3),
('V10012','PT135',4),('V10012','PT142',2),('V10012','PT143',2),('V10012','PT147',3),
('V10013','PT108',2),('V10013','PT110',8),('V10013','PT117',2),('V10013','PT071',3),
('V10014','PT677',12),('V10014','PT083',4),('V10014','PT086',3),
('V10015','PT120',6),('V10015','PT122',4),('V10015','PT713',3),
-- Lunes 4: Vuelta a la rutina, compras básicas
('V10016','PT071',3),('V10016','PT108',1),('V10016','PT098',3),
('V10017','PT135',2),('V10017','PT147',2),('V10017','PT021',2),
('V10018','PT697',2),('V10018','PT098',2),('V10018','PT083',3),
('V10019','PT713',3),('V10019','PT120',5),('V10019','PT714',2),
('V10020','PT001',2),('V10020','PT003',2),('V10020','PT098',2),
-- Martes 5: Día normal
('V10021','PT162',2),('V10021','PT164',1),('V10021','PT171',2),
('V10022','PT677',12),('V10022','PT083',4),('V10022','PT098',3),
('V10023','PT135',3),('V10023','PT071',2),('V10023','PT108',1),
('V10024','PT001',2),('V10024','PT021',2),('V10024','PT023',2),
('V10025','PT713',4),('V10025','PT120',6),('V10025','PT122',3),
-- Miércoles 6: Día normal
('V10026','PT697',2),('V10026','PT677',6),('V10026','PT098',2),
('V10027','PT083',3),('V10027','PT086',2),('V10027','PT088',2),
('V10028','PT135',2),('V10028','PT142',1),('V10028','PT071',2),
('V10029','PT001',2),('V10029','PT003',2),('V10029','PT098',3),
('V10030','PT713',3),('V10030','PT714',2),('V10030','PT120',5),
-- Jueves 7: Día normal
('V10031','PT108',2),('V10031','PT071',2),('V10031','PT098',3),
('V10032','PT135',3),('V10032','PT147',2),('V10032','PT162',1),
('V10033','PT677',12),('V10033','PT697',2),('V10033','PT083',4),
('V10034','PT001',2),('V10034','PT021',3),('V10034','PT037',1),
('V10035','PT713',4),('V10035','PT120',6),('V10035','PT714',3);

-- =====================================================
-- TIENDA 2: La Carnicería El Buen Corte (Monterrey)
-- 3 ventas/día × 7 días = 21 ventas
-- Patrón: Fin de semana 70% ventas, carnes premium
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- VIERNES 1 (día fuerte - preparación fin de semana)
('V20001','2025-08-01 10:00:00','EMP004','venta'),
('V20002','2025-08-01 13:30:00','EMP005','venta'),
('V20003','2025-08-01 17:00:00','EMP006','venta'),
-- SÁBADO 2 (día MUY fuerte - carnita asada)
('V20004','2025-08-02 09:30:00','EMP004','venta'),
('V20005','2025-08-02 11:00:00','EMP005','venta'),
('V20006','2025-08-02 14:00:00','EMP006','venta'),
-- DOMINGO 3 (día fuerte - comida familiar)
('V20007','2025-08-03 10:00:00','EMP004','venta'),
('V20008','2025-08-03 12:00:00','EMP005','venta'),
('V20009','2025-08-03 14:30:00','EMP006','venta'),
-- LUNES 4 (día débil)
('V20010','2025-08-04 11:00:00','EMP004','venta'),
('V20011','2025-08-04 14:00:00','EMP005','venta'),
('V20012','2025-08-04 17:00:00','EMP006','venta'),
-- MARTES 5 (día débil)
('V20013','2025-08-05 10:30:00','EMP004','venta'),
('V20014','2025-08-05 13:00:00','EMP005','venta'),
('V20015','2025-08-05 16:30:00','EMP006','venta'),
-- MIÉRCOLES 6 (día débil)
('V20016','2025-08-06 11:00:00','EMP004','venta'),
('V20017','2025-08-06 14:00:00','EMP005','venta'),
('V20018','2025-08-06 17:30:00','EMP006','venta'),
-- JUEVES 7 (día débil)
('V20019','2025-08-07 10:00:00','EMP004','venta'),
('V20020','2025-08-07 13:30:00','EMP005','venta'),
('V20021','2025-08-07 17:00:00','EMP006','venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Viernes 1: Preparando la carne asada
('V20001','PT204',4),('V20001','PT201',3),('V20001','PT212',2),('V20001','PT730',18),('V20001','PT238',2),
('V20002','PT217',2),('V20002','PT220',2),('V20002','PT226',4),('V20002','PT238',2),
('V20003','PT208',4),('V20003','PT209',3),('V20003','PT226',3),('V20003','PT731',12),
-- Sábado 2: DÍA GRANDE - carne asada
('V20004','PT204',5),('V20004','PT201',4),('V20004','PT206',3),('V20004','PT730',24),('V20004','PT731',12),('V20004','PT238',3),('V20004','PT239',3),
('V20005','PT217',2),('V20005','PT220',3),('V20005','PT221',2),('V20005','PT226',5),
('V20006','PT202',4),('V20006','PT212',3),('V20006','PT215',2),('V20006','PT732',18),('V20006','PT238',2),
-- Domingo 3: Comidas familiares
('V20007','PT208',5),('V20007','PT209',4),('V20007','PT226',4),('V20007','PT730',12),
('V20008','PT204',3),('V20008','PT220',2),('V20008','PT225',1),('V20008','PT226',3),
('V20009','PT201',3),('V20009','PT206',2),('V20009','PT208',3),('V20009','PT731',12),
-- Lunes 4-7: Días débiles, compras pequeñas
('V20010','PT208',2),('V20010','PT226',2),('V20010','PT730',6),
('V20011','PT217',1),('V20011','PT226',2),('V20011','PT238',1),
('V20012','PT201',2),('V20012','PT209',2),('V20012','PT226',2),
('V20013','PT208',2),('V20013','PT226',2),('V20013','PT730',6),
('V20014','PT220',1),('V20014','PT226',2),
('V20015','PT204',2),('V20015','PT208',2),('V20015','PT731',6),
('V20016','PT201',2),('V20016','PT226',2),('V20016','PT730',6),
('V20017','PT217',1),('V20017','PT226',2),
('V20018','PT208',2),('V20018','PT209',2),('V20018','PT226',2),
('V20019','PT204',2),('V20019','PT226',2),('V20019','PT730',6),
('V20020','PT220',1),('V20020','PT226',2),('V20020','PT238',1),
('V20021','PT201',2),('V20021','PT208',2),('V20021','PT226',2);

-- =====================================================
-- TIENDA 3: Súper La Esquina (Iztapalapa)
-- 10 ventas/día × 7 días = 70 ventas
-- Patrón: Flujo constante, compras pequeñas, alta rotación
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- VIERNES 1 (10 ventas)
('V30001','2025-08-01 07:00:00','EMP007','venta'),('V30002','2025-08-01 08:30:00','EMP008','venta'),
('V30003','2025-08-01 10:00:00','EMP007','venta'),('V30004','2025-08-01 12:00:00','EMP008','venta'),
('V30005','2025-08-01 14:00:00','EMP007','venta'),('V30006','2025-08-01 16:00:00','EMP008','venta'),
('V30007','2025-08-01 18:00:00','EMP007','venta'),('V30008','2025-08-01 19:30:00','EMP008','venta'),
('V30009','2025-08-01 20:30:00','EMP007','venta'),('V30010','2025-08-01 22:00:00','EMP008','venta'),
-- SÁBADO 2 (10 ventas)
('V30011','2025-08-02 07:30:00','EMP007','venta'),('V30012','2025-08-02 09:00:00','EMP008','venta'),
('V30013','2025-08-02 10:30:00','EMP007','venta'),('V30014','2025-08-02 12:00:00','EMP008','venta'),
('V30015','2025-08-02 14:00:00','EMP007','venta'),('V30016','2025-08-02 16:00:00','EMP008','venta'),
('V30017','2025-08-02 18:00:00','EMP007','venta'),('V30018','2025-08-02 19:30:00','EMP008','venta'),
('V30019','2025-08-02 20:30:00','EMP007','venta'),('V30020','2025-08-02 22:00:00','EMP008','venta'),
-- DOMINGO 3 (10 ventas)
('V30021','2025-08-03 08:00:00','EMP007','venta'),('V30022','2025-08-03 09:30:00','EMP008','venta'),
('V30023','2025-08-03 11:00:00','EMP007','venta'),('V30024','2025-08-03 13:00:00','EMP008','venta'),
('V30025','2025-08-03 15:00:00','EMP007','venta'),('V30026','2025-08-03 17:00:00','EMP008','venta'),
('V30027','2025-08-03 18:30:00','EMP007','venta'),('V30028','2025-08-03 19:30:00','EMP008','venta'),
('V30029','2025-08-03 20:30:00','EMP007','venta'),('V30030','2025-08-03 21:30:00','EMP008','venta'),
-- LUNES 4 (10 ventas)
('V30031','2025-08-04 07:00:00','EMP007','venta'),('V30032','2025-08-04 08:30:00','EMP008','venta'),
('V30033','2025-08-04 10:00:00','EMP007','venta'),('V30034','2025-08-04 12:00:00','EMP008','venta'),
('V30035','2025-08-04 14:00:00','EMP007','venta'),('V30036','2025-08-04 16:00:00','EMP008','venta'),
('V30037','2025-08-04 18:00:00','EMP007','venta'),('V30038','2025-08-04 19:30:00','EMP008','venta'),
('V30039','2025-08-04 20:30:00','EMP007','venta'),('V30040','2025-08-04 22:00:00','EMP008','venta'),
-- MARTES 5 (10 ventas)
('V30041','2025-08-05 07:00:00','EMP007','venta'),('V30042','2025-08-05 08:30:00','EMP008','venta'),
('V30043','2025-08-05 10:00:00','EMP007','venta'),('V30044','2025-08-05 12:00:00','EMP008','venta'),
('V30045','2025-08-05 14:00:00','EMP007','venta'),('V30046','2025-08-05 16:00:00','EMP008','venta'),
('V30047','2025-08-05 18:00:00','EMP007','venta'),('V30048','2025-08-05 19:30:00','EMP008','venta'),
('V30049','2025-08-05 20:30:00','EMP007','venta'),('V30050','2025-08-05 22:00:00','EMP008','venta'),
-- MIÉRCOLES 6 (10 ventas)
('V30051','2025-08-06 07:00:00','EMP007','venta'),('V30052','2025-08-06 08:30:00','EMP008','venta'),
('V30053','2025-08-06 10:00:00','EMP007','venta'),('V30054','2025-08-06 12:00:00','EMP008','venta'),
('V30055','2025-08-06 14:00:00','EMP007','venta'),('V30056','2025-08-06 16:00:00','EMP008','venta'),
('V30057','2025-08-06 18:00:00','EMP007','venta'),('V30058','2025-08-06 19:30:00','EMP008','venta'),
('V30059','2025-08-06 20:30:00','EMP007','venta'),('V30060','2025-08-06 22:00:00','EMP008','venta'),
-- JUEVES 7 (10 ventas)
('V30061','2025-08-07 07:00:00','EMP007','venta'),('V30062','2025-08-07 08:30:00','EMP008','venta'),
('V30063','2025-08-07 10:00:00','EMP007','venta'),('V30064','2025-08-07 12:00:00','EMP008','venta'),
('V30065','2025-08-07 14:00:00','EMP007','venta'),('V30066','2025-08-07 16:00:00','EMP008','venta'),
('V30067','2025-08-07 18:00:00','EMP007','venta'),('V30068','2025-08-07 19:30:00','EMP008','venta'),
('V30069','2025-08-07 20:30:00','EMP007','venta'),('V30070','2025-08-07 22:00:00','EMP008','venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Compras pequeñas típicas del barrio (1-2 productos, ticket bajo)
('V30001','PT767',1),('V30001','PT311',1),('V30002','PT301',2),('V30003','PT321',3),
('V30004','PT343',1),('V30005','PT311',2),('V30006','PT783',2),('V30006','PT321',2),
('V30007','PT767',1),('V30008','PT753',6),('V30008','PT301',2),
('V30009','PT321',4),('V30010','PT337',1),('V30010','PT331',1),
('V30011','PT767',1),('V30011','PT311',1),('V30012','PT301',2),('V30013','PT343',2),
('V30014','PT783',3),('V30015','PT321',3),('V30016','PT753',6),('V30016','PT301',1),
('V30017','PT767',1),('V30018','PT311',2),('V30019','PT321',4),('V30020','PT337',1),
('V30021','PT767',1),('V30021','PT311',1),('V30022','PT301',2),('V30023','PT783',2),
('V30024','PT343',1),('V30025','PT321',3),('V30026','PT753',6),
('V30027','PT767',1),('V30028','PT311',2),('V30029','PT301',2),('V30030','PT321',3),
('V30031','PT767',1),('V30031','PT311',1),('V30032','PT301',2),('V30033','PT343',1),
('V30034','PT783',3),('V30035','PT321',4),('V30036','PT753',6),('V30036','PT301',1),
('V30037','PT767',1),('V30038','PT311',2),('V30039','PT321',3),('V30040','PT337',1),
('V30041','PT767',1),('V30041','PT311',1),('V30042','PT301',2),('V30043','PT343',2),
('V30044','PT783',2),('V30045','PT321',3),('V30046','PT753',6),
('V30047','PT767',1),('V30048','PT311',2),('V30049','PT301',2),('V30050','PT321',4),
('V30051','PT767',1),('V30051','PT311',1),('V30052','PT301',2),('V30053','PT343',1),
('V30054','PT783',3),('V30055','PT321',3),('V30056','PT753',6),('V30056','PT301',2),
('V30057','PT767',1),('V30058','PT311',2),('V30059','PT321',4),('V30060','PT337',1),
('V30061','PT767',1),('V30061','PT311',1),('V30062','PT301',2),('V30063','PT343',2),
('V30064','PT783',2),('V30065','PT321',3),('V30066','PT753',6),
('V30067','PT767',1),('V30068','PT311',2),('V30069','PT301',2),('V30070','PT321',4);

-- =====================================================
-- TIENDA 4: Todo para Ti (Querétaro)
-- 6 ventas/día × 7 días = 42 ventas
-- Patrón: 3 picos (desayuno, comida, cena), tienda equilibrada
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- VIERNES 1
('V40001','2025-08-01 07:30:00','EMP009','venta'),('V40002','2025-08-01 09:00:00','EMP010','venta'),
('V40003','2025-08-01 14:00:00','EMP011','venta'),('V40004','2025-08-01 15:30:00','EMP009','venta'),
('V40005','2025-08-01 19:00:00','EMP010','venta'),('V40006','2025-08-01 20:30:00','EMP011','venta'),
-- SÁBADO 2
('V40007','2025-08-02 08:00:00','EMP009','venta'),('V40008','2025-08-02 10:00:00','EMP010','venta'),
('V40009','2025-08-02 13:00:00','EMP011','venta'),('V40010','2025-08-02 15:00:00','EMP009','venta'),
('V40011','2025-08-02 18:30:00','EMP010','venta'),('V40012','2025-08-02 20:00:00','EMP011','venta'),
-- DOMINGO 3
('V40013','2025-08-03 09:00:00','EMP009','venta'),('V40014','2025-08-03 11:00:00','EMP010','venta'),
('V40015','2025-08-03 13:30:00','EMP011','venta'),('V40016','2025-08-03 15:30:00','EMP009','venta'),
('V40017','2025-08-03 18:00:00','EMP010','venta'),('V40018','2025-08-03 20:00:00','EMP011','venta'),
-- LUNES 4
('V40019','2025-08-04 07:30:00','EMP009','venta'),('V40020','2025-08-04 09:00:00','EMP010','venta'),
('V40021','2025-08-04 14:00:00','EMP011','venta'),('V40022','2025-08-04 15:30:00','EMP009','venta'),
('V40023','2025-08-04 19:00:00','EMP010','venta'),('V40024','2025-08-04 20:30:00','EMP011','venta'),
-- MARTES 5
('V40025','2025-08-05 07:30:00','EMP009','venta'),('V40026','2025-08-05 09:00:00','EMP010','venta'),
('V40027','2025-08-05 14:00:00','EMP011','venta'),('V40028','2025-08-05 15:30:00','EMP009','venta'),
('V40029','2025-08-05 19:00:00','EMP010','venta'),('V40030','2025-08-05 20:30:00','EMP011','venta'),
-- MIÉRCOLES 6
('V40031','2025-08-06 07:30:00','EMP009','venta'),('V40032','2025-08-06 09:00:00','EMP010','venta'),
('V40033','2025-08-06 14:00:00','EMP011','venta'),('V40034','2025-08-06 15:30:00','EMP009','venta'),
('V40035','2025-08-06 19:00:00','EMP010','venta'),('V40036','2025-08-06 20:30:00','EMP011','venta'),
-- JUEVES 7
('V40037','2025-08-07 07:30:00','EMP009','venta'),('V40038','2025-08-07 09:00:00','EMP010','venta'),
('V40039','2025-08-07 14:00:00','EMP011','venta'),('V40040','2025-08-07 15:30:00','EMP009','venta'),
('V40041','2025-08-07 19:00:00','EMP010','venta'),('V40042','2025-08-07 20:30:00','EMP011','venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Mezcla de productos de despensa, lácteos y bebidas
('V40001','PT401',2),('V40001','PT421',3),('V40001','PT811',1),
('V40002','PT447',2),('V40002','PT452',2),('V40002','PT456',3),
('V40003','PT473',2),('V40003','PT478',1),('V40003','PT811',1),('V40003','PT401',2),
('V40004','PT812',6),('V40004','PT421',4),('V40004','PT447',2),
('V40005','PT831',1),('V40005','PT401',3),('V40005','PT421',2),
('V40006','PT447',2),('V40006','PT456',3),('V40006','PT473',2),
('V40007','PT401',3),('V40007','PT421',4),('V40007','PT811',2),
('V40008','PT447',3),('V40008','PT452',2),('V40008','PT812',12),
('V40009','PT473',3),('V40009','PT478',2),('V40009','PT421',4),
('V40010','PT401',2),('V40010','PT447',3),('V40010','PT831',2),
('V40011','PT456',4),('V40011','PT473',2),('V40011','PT811',1),
('V40012','PT421',3),('V40012','PT447',2),('V40012','PT478',1),
('V40013','PT401',3),('V40013','PT421',4),('V40013','PT812',12),
('V40014','PT447',2),('V40014','PT452',2),('V40014','PT456',3),
('V40015','PT473',3),('V40015','PT478',2),('V40015','PT811',2),
('V40016','PT401',2),('V40016','PT421',3),('V40016','PT831',1),
('V40017','PT447',2),('V40017','PT456',3),('V40017','PT473',2),
('V40018','PT421',3),('V40018','PT478',1),('V40018','PT812',6),
('V40019','PT401',2),('V40019','PT421',3),('V40019','PT811',1),
('V40020','PT447',2),('V40020','PT452',2),('V40020','PT456',2),
('V40021','PT473',2),('V40021','PT478',1),('V40021','PT421',3),
('V40022','PT401',2),('V40022','PT447',2),('V40022','PT812',6),
('V40023','PT456',3),('V40023','PT473',2),('V40023','PT831',1),
('V40024','PT421',3),('V40024','PT447',2),('V40024','PT478',1),
('V40025','PT401',2),('V40025','PT421',3),('V40025','PT811',1),
('V40026','PT447',2),('V40026','PT452',2),('V40026','PT456',3),
('V40027','PT473',2),('V40027','PT478',1),('V40027','PT421',3),
('V40028','PT401',2),('V40028','PT447',3),('V40028','PT812',6),
('V40029','PT456',3),('V40029','PT473',2),('V40029','PT831',1),
('V40030','PT421',3),('V40030','PT447',2),('V40030','PT478',1),
('V40031','PT401',2),('V40031','PT421',3),('V40031','PT811',1),
('V40032','PT447',2),('V40032','PT452',2),('V40032','PT456',2),
('V40033','PT473',2),('V40033','PT478',1),('V40033','PT421',3),
('V40034','PT401',2),('V40034','PT447',2),('V40034','PT812',6),
('V40035','PT456',3),('V40035','PT473',2),('V40035','PT831',1),
('V40036','PT421',3),('V40036','PT447',2),('V40036','PT478',1),
('V40037','PT401',2),('V40037','PT421',3),('V40037','PT811',1),
('V40038','PT447',2),('V40038','PT452',2),('V40038','PT456',3),
('V40039','PT473',2),('V40039','PT478',1),('V40039','PT421',3),
('V40040','PT401',2),('V40040','PT447',3),('V40040','PT812',6),
('V40041','PT456',3),('V40041','PT473',2),('V40041','PT831',1),
('V40042','PT421',3),('V40042','PT447',2),('V40042','PT478',1);

-- =====================================================
-- TIENDA 5: Farmacia Vida Sana (Guadalajara)
-- 8 ventas/día × 7 días = 56 ventas
-- Patrón: Picos en mañana/tarde, emergencias nocturnas
-- =====================================================

INSERT INTO ventas (id_venta, fecha_transaccion, id_empleado, tipo) VALUES
-- VIERNES 1
('V50001','2025-08-01 08:00:00','EMP012','venta'),('V50002','2025-08-01 10:00:00','EMP013','venta'),
('V50003','2025-08-01 12:00:00','EMP014','venta'),('V50004','2025-08-01 14:00:00','EMP012','venta'),
('V50005','2025-08-01 16:00:00','EMP013','venta'),('V50006','2025-08-01 18:00:00','EMP014','venta'),
('V50007','2025-08-01 20:00:00','EMP012','venta'),('V50008','2025-08-01 22:30:00','EMP013','venta'),
-- SÁBADO 2
('V50009','2025-08-02 08:30:00','EMP012','venta'),('V50010','2025-08-02 10:30:00','EMP013','venta'),
('V50011','2025-08-02 12:30:00','EMP014','venta'),('V50012','2025-08-02 14:30:00','EMP012','venta'),
('V50013','2025-08-02 16:30:00','EMP013','venta'),('V50014','2025-08-02 18:30:00','EMP014','venta'),
('V50015','2025-08-02 20:30:00','EMP012','venta'),('V50016','2025-08-02 23:00:00','EMP013','venta'),
-- DOMINGO 3
('V50017','2025-08-03 09:00:00','EMP012','venta'),('V50018','2025-08-03 11:00:00','EMP013','venta'),
('V50019','2025-08-03 13:00:00','EMP014','venta'),('V50020','2025-08-03 15:00:00','EMP012','venta'),
('V50021','2025-08-03 17:00:00','EMP013','venta'),('V50022','2025-08-03 19:00:00','EMP014','venta'),
('V50023','2025-08-03 21:00:00','EMP012','venta'),('V50024','2025-08-03 23:30:00','EMP013','venta'),
-- LUNES 4
('V50025','2025-08-04 08:00:00','EMP012','venta'),('V50026','2025-08-04 10:00:00','EMP013','venta'),
('V50027','2025-08-04 12:00:00','EMP014','venta'),('V50028','2025-08-04 14:00:00','EMP012','venta'),
('V50029','2025-08-04 16:00:00','EMP013','venta'),('V50030','2025-08-04 18:00:00','EMP014','venta'),
('V50031','2025-08-04 20:00:00','EMP012','venta'),('V50032','2025-08-04 22:30:00','EMP013','venta'),
-- MARTES 5
('V50033','2025-08-05 08:00:00','EMP012','venta'),('V50034','2025-08-05 10:00:00','EMP013','venta'),
('V50035','2025-08-05 12:00:00','EMP014','venta'),('V50036','2025-08-05 14:00:00','EMP012','venta'),
('V50037','2025-08-05 16:00:00','EMP013','venta'),('V50038','2025-08-05 18:00:00','EMP014','venta'),
('V50039','2025-08-05 20:00:00','EMP012','venta'),('V50040','2025-08-05 22:30:00','EMP013','venta'),
-- MIÉRCOLES 6
('V50041','2025-08-06 08:00:00','EMP012','venta'),('V50042','2025-08-06 10:00:00','EMP013','venta'),
('V50043','2025-08-06 12:00:00','EMP014','venta'),('V50044','2025-08-06 14:00:00','EMP012','venta'),
('V50045','2025-08-06 16:00:00','EMP013','venta'),('V50046','2025-08-06 18:00:00','EMP014','venta'),
('V50047','2025-08-06 20:00:00','EMP012','venta'),('V50048','2025-08-06 22:30:00','EMP013','venta'),
-- JUEVES 7
('V50049','2025-08-07 08:00:00','EMP012','venta'),('V50050','2025-08-07 10:00:00','EMP013','venta'),
('V50051','2025-08-07 12:00:00','EMP014','venta'),('V50052','2025-08-07 14:00:00','EMP012','venta'),
('V50053','2025-08-07 16:00:00','EMP013','venta'),('V50054','2025-08-07 18:00:00','EMP014','venta'),
('V50055','2025-08-07 20:00:00','EMP012','venta'),('V50056','2025-08-07 22:30:00','EMP013','venta');

INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
-- Ventas de medicamentos y productos de cuidado personal
('V50001','PT577',2),('V50001','PT550',1),('V50001','PT558',1),
('V50002','PT568',1),('V50002','PT571',2),('V50002','PT893',1),
('V50003','PT580',1),('V50003','PT584',2),('V50003','PT577',1),
('V50004','PT591',1),('V50004','PT594',1),('V50004','PT550',2),
('V50005','PT893',2),('V50005','PT568',1),('V50005','PT577',1),
('V50006','PT558',2),('V50006','PT571',1),('V50006','PT580',1),
('V50007','PT584',1),('V50007','PT591',2),('V50007','PT894',1),
('V50008','PT577',3),('V50008','PT550',2),
('V50009','PT568',1),('V50009','PT571',2),('V50009','PT893',1),
('V50010','PT580',2),('V50010','PT584',1),('V50010','PT558',1),
('V50011','PT591',1),('V50011','PT594',2),('V50011','PT577',1),
('V50012','PT550',2),('V50012','PT568',1),('V50012','PT894',1),
('V50013','PT571',1),('V50013','PT580',2),('V50013','PT893',1),
('V50014','PT584',1),('V50014','PT591',1),('V50014','PT577',2),
('V50015','PT594',2),('V50015','PT550',1),('V50015','PT558',1),
('V50016','PT577',2),('V50016','PT568',2),
('V50017','PT571',1),('V50017','PT580',2),('V50017','PT893',1),
('V50018','PT584',2),('V50018','PT591',1),('V50018','PT558',1),
('V50019','PT594',1),('V50019','PT577',2),('V50019','PT550',1),
('V50020','PT568',1),('V50020','PT571',1),('V50020','PT894',1),
('V50021','PT580',2),('V50021','PT584',1),('V50021','PT893',1),
('V50022','PT591',1),('V50022','PT594',1),('V50022','PT577',2),
('V50023','PT550',2),('V50023','PT558',1),('V50023','PT568',1),
('V50024','PT577',3),('V50024','PT571',1),
('V50025','PT580',1),('V50025','PT584',2),('V50025','PT893',1),
('V50026','PT591',1),('V50026','PT594',1),('V50026','PT550',2),
('V50027','PT577',2),('V50027','PT558',1),('V50027','PT568',1),
('V50028','PT571',1),('V50028','PT580',2),('V50028','PT894',1),
('V50029','PT584',1),('V50029','PT591',1),('V50029','PT893',1),
('V50030','PT594',2),('V50030','PT577',1),('V50030','PT550',1),
('V50031','PT558',1),('V50031','PT568',2),('V50031','PT571',1),
('V50032','PT577',2),('V50032','PT580',2),
('V50033','PT584',1),('V50033','PT591',2),('V50033','PT893',1),
('V50034','PT594',1),('V50034','PT550',2),('V50034','PT577',1),
('V50035','PT558',1),('V50035','PT568',1),('V50035','PT571',2),
('V50036','PT580',2),('V50036','PT584',1),('V50036','PT894',1),
('V50037','PT591',1),('V50037','PT594',1),('V50037','PT893',1),
('V50038','PT577',2),('V50038','PT550',1),('V50038','PT558',1),
('V50039','PT568',1),('V50039','PT571',2),('V50039','PT580',1),
('V50040','PT577',3),('V50040','PT584',1),
('V50041','PT591',1),('V50041','PT594',2),('V50041','PT893',1),
('V50042','PT550',2),('V50042','PT558',1),('V50042','PT577',1),
('V50043','PT568',1),('V50043','PT571',1),('V50043','PT580',2),
('V50044','PT584',1),('V50044','PT591',2),('V50044','PT894',1),
('V50045','PT594',1),('V50045','PT577',2),('V50045','PT893',1),
('V50046','PT550',1),('V50046','PT558',2),('V50046','PT568',1),
('V50047','PT571',1),('V50047','PT580',1),('V50047','PT584',2),
('V50048','PT577',2),('V50048','PT591',2),
('V50049','PT594',1),('V50049','PT550',2),('V50049','PT893',1),
('V50050','PT558',1),('V50050','PT568',1),('V50050','PT577',2),
('V50051','PT571',2),('V50051','PT580',1),('V50051','PT584',1),
('V50052','PT591',1),('V50052','PT594',2),('V50052','PT894',1),
('V50053','PT577',2),('V50053','PT550',1),('V50053','PT893',1),
('V50054','PT558',1),('V50054','PT568',2),('V50054','PT571',1),
('V50055','PT580',1),('V50055','PT584',1),('V50055','PT591',2),
('V50056','PT577',3),('V50056','PT594',1);

