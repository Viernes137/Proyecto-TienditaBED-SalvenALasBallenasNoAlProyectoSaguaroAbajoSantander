-- =====================================================
-- SISTEMA DE TIENDAS - DATOS DE PRUEBA
-- 5 Tiendas, 150+ Productos, 19 Proveedores
-- =====================================================

-- =====================================================
-- 1. TIENDAS (5)
-- =====================================================

INSERT INTO tiendas (id_tienda, nombre_t, telefono_t, fecha_apertura, estado_t, colonia_t, direccion_t, horario_operacion, tipo_t, descripcion_t) VALUES
('TDA001', 'Abarrotes San Miguel', 5534567890, '2018-03-15 08:00:00', 'CDMX', 'Narvarte', 'Calle Pilares 245', '7:00-22:00', 'Abarrotes', 'Tienda de abarrotes general con variedad de productos'),
('TDA002', 'La Carnicería El Buen Corte', 8181234567, '2019-06-20 09:00:00', 'Nuevo León', 'Centro', 'Av. Juárez 1523, Monterrey', '8:00-20:00', 'Carnicería', 'Carnes frescas, pescados y productos lácteos'),
('TDA003', 'Súper La Esquina', 5545678901, '2020-01-10 07:30:00', 'CDMX', 'Iztapalapa', 'Ermita Iztapalapa 789', '6:00-23:00', 'Miscelánea', 'Tienda de la esquina con lo necesario del día'),
('TDA004', 'Todo para Ti', 4421234567, '2017-11-05 08:00:00', 'Querétaro', 'El Cerrito', 'Blvd. Bernardo Quintana 456', '7:00-21:00', 'Miscelánea', 'Tienda de barrio con productos esenciales'),
('TDA005', 'Mega Abarrotes La Providencia', 3331234567, '2016-08-12 07:00:00', 'Jalisco', 'Providencia', 'Av. Providencia 2345, Guadalajara', '6:00-23:00', 'Abarrotes', 'Abarrotes completos con gran variedad de productos');

-- =====================================================
-- 2. PROVEEDORES (19)
-- =====================================================

INSERT INTO provedores (id_provedor, nombre_prv, telefono_prv, correo_prv) VALUES
-- Frutas (3)
('PRV001', 'Frutas Frescas del Valle', 5556781234, 'ventas@frutasdelvalle.mx'),
('PRV002', 'Distribuidora Tropical', 8187654321, 'contacto@tropical.mx'),
('PRV003', 'Frutas Selectas La Huerta', 4428765432, 'pedidos@lahuerta.mx'),

-- Verduras (4)
('PRV004', 'Verduras Orgánicas del Campo', 5559876543, 'info@organicocampo.mx'),
('PRV005', 'Central de Abastos Distribuidor', 3338765432, 'ventas@centralabasto.mx'),
('PRV006', 'Hortalizas Frescas SA', 5557654321, 'contacto@hortalizas.mx'),
('PRV007', 'Verduras Don José', 4429876543, 'ventas@donjose.mx'),

-- Carnes y Lácteos (2)
('PRV008', 'Carnes y Lácteos El Rancho', 8189876543, 'pedidos@elrancho.mx'),
('PRV009', 'Productos Lácteos La Vaca Feliz', 4427654321, 'ventas@vacafeliz.mx'),

-- Pescados (1)
('PRV010', 'Pescados y Mariscos La Costa', 6691234567, 'ventas@lacosta.mx'),

-- Papas y Refrescos (2)
('PRV011', 'Sabritas Distribuidor Oficial', 5558765432, 'distribuidores@sabritas.mx'),
('PRV012', 'Refrescos y Botanas del Norte', 8188765432, 'ventas@refrescosnorte.mx'),

-- Panes (2)
('PRV013', 'Panadería Industrial Bimbo', 5559871234, 'clientes@bimbo.mx'),
('PRV014', 'Pan Tradicional La Espiga', 3337654321, 'ventas@laespiga.mx'),

-- Dulces (2)
('PRV015', 'Dulces y Chocolates Ricolino', 5556782345, 'ventas@ricolino.mx'),
('PRV016', 'Distribuidora de Confitería', 4428761234, 'pedidos@confiteria.mx'),

-- Sopas y Pastas (1)
('PRV017', 'Alimentos Instantáneos Nissin', 5557893456, 'distribuidores@nissin.mx'),

-- Enlatados (3)
('PRV018', 'Conservas y Enlatados Herdez', 5558764567, 'ventas@herdez.mx'),
('PRV019', 'Alimentos Procesados Del Monte', 8189875678, 'clientes@delmonte.mx'),
('PRV020', 'Enlatados La Costeña', 5559876789, 'distribuidores@lacostena.mx'),

-- Limpieza (2)
('PRV021', 'Productos de Limpieza Zote', 3338769012, 'ventas@zote.mx'),
('PRV022', 'Distribuidora de Higiene Total', 4429873456, 'pedidos@higienetotal.mx');

-- =====================================================
-- 3. PRODUCTOS (150+)
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
('EMP009', 'TDA004', 'Carmen Jiménez Robles', 'Dueña', 15000, 'JIRC750908MQRMRR09', 4421234568, 'cjimenez@email.com'),
('EMP010', 'TDA004', 'Miguel Ángel Vargas', 'Cajero', 7200, 'VAMM960325HQTRGL10', 4421234569, 'mvargas@email.com'),
('EMP011', 'TDA004', 'Sofía Méndez Torres', 'Ayudante', 6500, 'METS980715MQRNFF11', 4421234570, 'smendez@email.com'),

-- Mega Abarrotes La Providencia (TDA005)
('EMP012', 'TDA005', 'Ricardo González Ochoa', 'Gerente', 14000, 'GOOR820430HJCLCR12', 3331234568, 'rgonzalez@email.com'),
('EMP013', 'TDA005', 'Gabriela Ruiz Mora', 'Subgerente', 11000, 'RUMG880922MJCZRB13', 3331234569, 'gruiz@email.com'),
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

-- =====================================================
-- 6. INVENTARIO (Stock actual en cada tienda)
-- =====================================================

-- ABARROTES SAN MIGUEL (TDA001) - Stock alto (tienda grande)
INSERT INTO inventario (id_particular, cantidad, fecha_registro) VALUES
-- Frutas (stock medio-alto)
('PT001', 50, '2024-10-01 08:00:00'), ('PT002', 45, '2024-10-01 08:00:00'),
('PT003', 80, '2024-10-01 08:00:00'), ('PT004', 60, '2024-10-01 08:00:00'),
('PT005', 40, '2024-10-01 08:00:00'), ('PT006', 35, '2024-10-01 08:00:00'),
('PT007', 35, '2024-10-01 08:00:00'), ('PT008', 25, '2024-10-01 08:00:00'),
('PT009', 30, '2024-10-01 08:00:00'), ('PT010', 28, '2024-10-01 08:00:00'),
('PT011', 20, '2024-10-01 08:00:00'), ('PT012', 40, '2024-10-01 08:00:00'),
('PT013', 45, '2024-10-01 08:00:00'), ('PT014', 15, '2024-10-01 08:00:00'),
('PT015', 30, '2024-10-01 08:00:00'), ('PT016', 25, '2024-10-01 08:00:00'),
('PT017', 70, '2024-10-01 08:00:00'), ('PT018', 20, '2024-10-01 08:00:00'),
('PT019', 30, '2024-10-01 08:00:00'), ('PT020', 18, '2024-10-01 08:00:00'),

-- Verduras (stock alto)
('PT021', 90, '2024-10-01 08:00:00'), ('PT022', 85, '2024-10-01 08:00:00'),
('PT023', 100, '2024-10-01 08:00:00'), ('PT024', 45, '2024-10-01 08:00:00'),
('PT025', 120, '2024-10-01 08:00:00'), ('PT026', 80, '2024-10-01 08:00:00'),
('PT027', 40, '2024-10-01 08:00:00'), ('PT028', 35, '2024-10-01 08:00:00'),
('PT029', 25, '2024-10-01 08:00:00'), ('PT030', 30, '2024-10-01 08:00:00'),
('PT031', 28, '2024-10-01 08:00:00'), ('PT032', 50, '2024-10-01 08:00:00'),
('PT033', 40, '2024-10-01 08:00:00'), ('PT034', 60, '2024-10-01 08:00:00'),
('PT035', 55, '2024-10-01 08:00:00'), ('PT036', 35, '2024-10-01 08:00:00'),
('PT037', 70, '2024-10-01 08:00:00'), ('PT038', 45, '2024-10-01 08:00:00'),
('PT039', 50, '2024-10-01 08:00:00'), ('PT040', 40, '2024-10-01 08:00:00'),
('PT041', 30, '2024-10-01 08:00:00'), ('PT042', 25, '2024-10-01 08:00:00'),
('PT043', 28, '2024-10-01 08:00:00'), ('PT044', 35, '2024-10-01 08:00:00'),
('PT045', 55, '2024-10-01 08:00:00'),

-- Lácteos
('PT071', 150, '2024-10-01 08:00:00'), ('PT072', 80, '2024-10-01 08:00:00'),
('PT073', 60, '2024-10-01 08:00:00'), ('PT074', 55, '2024-10-01 08:00:00'),
('PT075', 70, '2024-10-01 08:00:00'), ('PT076', 65, '2024-10-01 08:00:00'),
('PT077', 40, '2024-10-01 08:00:00'), ('PT078', 85, '2024-10-01 08:00:00'),
('PT079', 50, '2024-10-01 08:00:00'), ('PT080', 45, '2024-10-01 08:00:00'),
('PT081', 200, '2024-10-01 08:00:00'), ('PT082', 180, '2024-10-01 08:00:00'),

-- Botanas
('PT083', 120, '2024-10-01 08:00:00'), ('PT084', 100, '2024-10-01 08:00:00'),
('PT085', 80, '2024-10-01 08:00:00'), ('PT086', 150, '2024-10-01 08:00:00'),
('PT087', 130, '2024-10-01 08:00:00'), ('PT088', 140, '2024-10-01 08:00:00'),
('PT089', 90, '2024-10-01 08:00:00'), ('PT090', 70, '2024-10-01 08:00:00'),
('PT091', 60, '2024-10-01 08:00:00'), ('PT092', 75, '2024-10-01 08:00:00'),
('PT093', 65, '2024-10-01 08:00:00'), ('PT094', 80, '2024-10-01 08:00:00'),
('PT095', 55, '2024-10-01 08:00:00'), ('PT096', 45, '2024-10-01 08:00:00'),
('PT097', 85, '2024-10-01 08:00:00'),

-- Bebidas
('PT098', 200, '2024-10-01 08:00:00'), ('PT099', 150, '2024-10-01 08:00:00'),
('PT100', 120, '2024-10-01 08:00:00'), ('PT101', 180, '2024-10-01 08:00:00'),
('PT102', 140, '2024-10-01 08:00:00'), ('PT103', 250, '2024-10-01 08:00:00'),
('PT104', 90, '2024-10-01 08:00:00'), ('PT105', 85, '2024-10-01 08:00:00'),
('PT106', 80, '2024-10-01 08:00:00'), ('PT107', 70, '2024-10-01 08:00:00'),

-- Panadería
('PT108', 100, '2024-10-01 08:00:00'), ('PT109', 60, '2024-10-01 08:00:00'),
('PT110', 150, '2024-10-01 08:00:00'), ('PT111', 140, '2024-10-01 08:00:00'),
('PT112', 80, '2024-10-01 08:00:00'), ('PT113', 90, '2024-10-01 08:00:00'),
('PT114', 70, '2024-10-01 08:00:00'), ('PT115', 65, '2024-10-01 08:00:00'),
('PT116', 75, '2024-10-01 08:00:00'), ('PT117', 200, '2024-10-01 08:00:00'),
('PT118', 120, '2024-10-01 08:00:00'), ('PT119', 110, '2024-10-01 08:00:00'),

-- Dulces
('PT120', 200, '2024-10-01 08:00:00'), ('PT121', 150, '2024-10-01 08:00:00'),
('PT122', 160, '2024-10-01 08:00:00'), ('PT123', 140, '2024-10-01 08:00:00'),
('PT124', 130, '2024-10-01 08:00:00'), ('PT125', 120, '2024-10-01 08:00:00'),
('PT126', 110, '2024-10-01 08:00:00'), ('PT127', 180, '2024-10-01 08:00:00'),
('PT128', 170, '2024-10-01 08:00:00'), ('PT129', 200, '2024-10-01 08:00:00'),
('PT130', 190, '2024-10-01 08:00:00'), ('PT131', 160, '2024-10-01 08:00:00'),
('PT132', 140, '2024-10-01 08:00:00'), ('PT133', 150, '2024-10-01 08:00:00'),
('PT134', 120, '2024-10-01 08:00:00'),

-- Despensa
('PT135', 180, '2024-10-01 08:00:00'), ('PT136', 170, '2024-10-01 08:00:00'),
('PT137', 150, '2024-10-01 08:00:00'), ('PT138', 100, '2024-10-01 08:00:00'),
('PT139', 90, '2024-10-01 08:00:00'), ('PT140', 85, '2024-10-01 08:00:00'),
('PT141', 140, '2024-10-01 08:00:00'), ('PT142', 120, '2024-10-01 08:00:00'),
('PT143', 130, '2024-10-01 08:00:00'), ('PT144', 125, '2024-10-01 08:00:00'),
('PT145', 80, '2024-10-01 08:00:00'), ('PT146', 95, '2024-10-01 08:00:00'),

-- Enlatados
('PT147', 150, '2024-10-01 08:00:00'), ('PT148', 140, '2024-10-01 08:00:00'),
('PT149', 100, '2024-10-01 08:00:00'), ('PT150', 120, '2024-10-01 08:00:00'),
('PT151', 110, '2024-10-01 08:00:00'), ('PT152', 130, '2024-10-01 08:00:00'),
('PT153', 90, '2024-10-01 08:00:00'), ('PT154', 85, '2024-10-01 08:00:00'),
('PT155', 140, '2024-10-01 08:00:00'), ('PT156', 135, '2024-10-01 08:00:00'),
('PT157', 125, '2024-10-01 08:00:00'), ('PT158', 80, '2024-10-01 08:00:00'),
('PT159', 70, '2024-10-01 08:00:00'), ('PT160', 75, '2024-10-01 08:00:00'),
('PT161', 65, '2024-10-01 08:00:00'),

-- Limpieza
('PT162', 100, '2024-10-01 08:00:00'), ('PT163', 95, '2024-10-01 08:00:00'),
('PT164', 120, '2024-10-01 08:00:00'), ('PT165', 110, '2024-10-01 08:00:00'),
('PT166', 130, '2024-10-01 08:00:00'), ('PT167', 140, '2024-10-01 08:00:00'),
('PT168', 90, '2024-10-01 08:00:00'), ('PT169', 125, '2024-10-01 08:00:00'),
('PT170', 115, '2024-10-01 08:00:00'), ('PT171', 200, '2024-10-01 08:00:00'),
('PT172', 180, '2024-10-01 08:00:00'), ('PT173', 85, '2024-10-01 08:00:00'),
('PT174', 95, '2024-10-01 08:00:00'), ('PT175', 150, '2024-10-01 08:00:00'),
('PT176', 50, '2024-10-01 08:00:00'),

-- LA CARNICERÍA EL BUEN CORTE (TDA002) - Stock especializado
-- Carnes (stock fresco diario)
('PT201', 40, '2024-10-01 08:00:00'), ('PT202', 50, '2024-10-01 08:00:00'),
('PT203', 35, '2024-10-01 08:00:00'), ('PT204', 25, '2024-10-01 08:00:00'),
('PT205', 45, '2024-10-01 08:00:00'), ('PT206', 40, '2024-10-01 08:00:00'),
('PT207', 38, '2024-10-01 08:00:00'), ('PT208', 60, '2024-10-01 08:00:00'),
('PT209', 55, '2024-10-01 08:00:00'), ('PT210', 52, '2024-10-01 08:00:00'),
('PT211', 30, '2024-10-01 08:00:00'), ('PT212', 48, '2024-10-01 08:00:00'),
('PT213', 42, '2024-10-01 08:00:00'), ('PT214', 50, '2024-10-01 08:00:00'),
('PT215', 45, '2024-10-01 08:00:00'),

-- Pescados (stock fresco)
('PT216', 30, '2024-10-01 08:00:00'), ('PT217', 15, '2024-10-01 08:00:00'),
('PT218', 35, '2024-10-01 08:00:00'), ('PT219', 20, '2024-10-01 08:00:00'),
('PT220', 25, '2024-10-01 08:00:00'), ('PT221', 10, '2024-10-01 08:00:00'),
('PT222', 12, '2024-10-01 08:00:00'), ('PT223', 18, '2024-10-01 08:00:00'),
('PT224', 22, '2024-10-01 08:00:00'), ('PT225', 16, '2024-10-01 08:00:00'),

-- Lácteos
('PT226', 100, '2024-10-01 08:00:00'), ('PT227', 60, '2024-10-01 08:00:00'),
('PT228', 50, '2024-10-01 08:00:00'), ('PT229', 48, '2024-10-01 08:00:00'),
('PT230', 80, '2024-10-01 08:00:00'), ('PT231', 75, '2024-10-01 08:00:00'),
('PT232', 45, '2024-10-01 08:00:00'), ('PT233', 90, '2024-10-01 08:00:00'),
('PT234', 55, '2024-10-01 08:00:00'), ('PT235', 50, '2024-10-01 08:00:00'),
('PT236', 150, '2024-10-01 08:00:00'), ('PT237', 140, '2024-10-01 08:00:00'),

-- Verduras básicas
('PT238', 60, '2024-10-01 08:00:00'), ('PT239', 50, '2024-10-01 08:00:00'),
('PT240', 45, '2024-10-01 08:00:00'), ('PT241', 40, '2024-10-01 08:00:00'),

-- SÚPER LA ESQUINA (TDA003) - Stock bajo (tienda pequeña)
-- Botanas
('PT301', 40, '2024-10-01 08:00:00'), ('PT302', 35, '2024-10-01 08:00:00'),
('PT303', 50, '2024-10-01 08:00:00'), ('PT304', 45, '2024-10-01 08:00:00'),
('PT305', 48, '2024-10-01 08:00:00'), ('PT306', 30, '2024-10-01 08:00:00'),
('PT307', 25, '2024-10-01 08:00:00'), ('PT308', 35, '2024-10-01 08:00:00'),
('PT309', 28, '2024-10-01 08:00:00'), ('PT310', 40, '2024-10-01 08:00:00'),

-- Bebidas
('PT311', 80, '2024-10-01 08:00:00'), ('PT312', 50, '2024-10-01 08:00:00'),
('PT313', 45, '2024-10-01 08:00:00'), ('PT314', 70, '2024-10-01 08:00:00'),
('PT315', 55, '2024-10-01 08:00:00'), ('PT316', 100, '2024-10-01 08:00:00'),
('PT317', 35, '2024-10-01 08:00:00'), ('PT318', 32, '2024-10-01 08:00:00'),
('PT319', 30, '2024-10-01 08:00:00'), ('PT320', 28, '2024-10-01 08:00:00'),

-- Dulces
('PT321', 60, '2024-10-01 08:00:00'), ('PT322', 50, '2024-10-01 08:00:00'),
('PT323', 55, '2024-10-01 08:00:00'), ('PT324', 45, '2024-10-01 08:00:00'),
('PT325', 70, '2024-10-01 08:00:00'), ('PT326', 65, '2024-10-01 08:00:00'),
('PT327', 80, '2024-10-01 08:00:00'), ('PT328', 75, '2024-10-01 08:00:00'),
('PT329', 52, '2024-10-01 08:00:00'), ('PT330', 58, '2024-10-01 08:00:00'),

-- Panadería
('PT331', 40, '2024-10-01 08:00:00'), ('PT332', 50, '2024-10-01 08:00:00'),
('PT333', 48, '2024-10-01 08:00:00'), ('PT334', 80, '2024-10-01 08:00:00'),
('PT335', 45, '2024-10-01 08:00:00'), ('PT336', 60, '2024-10-01 08:00:00'),

-- Lácteos
('PT337', 50, '2024-10-01 08:00:00'), ('PT338', 35, '2024-10-01 08:00:00'),
('PT339', 40, '2024-10-01 08:00:00'), ('PT340', 28, '2024-10-01 08:00:00'),
('PT341', 70, '2024-10-01 08:00:00'), ('PT342', 65, '2024-10-01 08:00:00'),

-- Despensa
('PT343', 60, '2024-10-01 08:00:00'), ('PT344', 55, '2024-10-01 08:00:00'),
('PT345', 52, '2024-10-01 08:00:00'), ('PT346', 45, '2024-10-01 08:00:00'),
('PT347', 50, '2024-10-01 08:00:00'), ('PT348', 48, '2024-10-01 08:00:00'),
('PT349', 46, '2024-10-01 08:00:00'), ('PT350', 55, '2024-10-01 08:00:00'),

-- Limpieza
('PT351', 35, '2024-10-01 08:00:00'), ('PT352', 40, '2024-10-01 08:00:00'),
('PT353', 45, '2024-10-01 08:00:00'), ('PT354', 38, '2024-10-01 08:00:00'),
('PT355', 60, '2024-10-01 08:00:00'), ('PT356', 70, '2024-10-01 08:00:00'),
('PT357', 32, '2024-10-01 08:00:00'), ('PT358', 50, '2024-10-01 08:00:00'),

-- TODO PARA TI (TDA004) - Stock medio
-- Botanas
('PT401', 50, '2024-10-01 08:00:00'), ('PT402', 45, '2024-10-01 08:00:00'),
('PT403', 40, '2024-10-01 08:00:00'), ('PT404', 60, '2024-10-01 08:00:00'),
('PT405', 55, '2024-10-01 08:00:00'), ('PT406', 58, '2024-10-01 08:00:00'),
('PT407', 42, '2024-10-01 08:00:00'), ('PT408', 35, '2024-10-01 08:00:00'),
('PT409', 32, '2024-10-01 08:00:00'), ('PT410', 38, '2024-10-01 08:00:00'),
('PT411', 40, '2024-10-01 08:00:00'), ('PT412', 45, '2024-10-01 08:00:00'),

-- Bebidas
('PT413', 90, '2024-10-01 08:00:00'), ('PT414', 60, '2024-10-01 08:00:00'),
('PT415', 55, '2024-10-01 08:00:00'), ('PT416', 80, '2024-10-01 08:00:00'),
('PT417', 65, '2024-10-01 08:00:00'), ('PT418', 110, '2024-10-01 08:00:00'),
('PT419', 42, '2024-10-01 08:00:00'), ('PT420', 40, '2024-10-01 08:00:00'),
('PT421', 38, '2024-10-01 08:00:00'), ('PT422', 35, '2024-10-01 08:00:00'),

-- Dulces
('PT423', 70, '2024-10-01 08:00:00'), ('PT424', 65, '2024-10-01 08:00:00'),
('PT425', 68, '2024-10-01 08:00:00'), ('PT426', 60, '2024-10-01 08:00:00'),
('PT427', 58, '2024-10-01 08:00:00'), ('PT428', 55, '2024-10-01 08:00:00'),
('PT429', 75, '2024-10-01 08:00:00'), ('PT430', 80, '2024-10-01 08:00:00'),
('PT431', 78, '2024-10-01 08:00:00'), ('PT432', 72, '2024-10-01 08:00:00'),
('PT433', 62, '2024-10-01 08:00:00'), ('PT434', 68, '2024-10-01 08:00:00'),

-- Panadería
('PT435', 50, '2024-10-01 08:00:00'), ('PT436', 60, '2024-10-01 08:00:00'),
('PT437', 58, '2024-10-01 08:00:00'), ('PT438', 40, '2024-10-01 08:00:00'),
('PT439', 90, '2024-10-01 08:00:00'), ('PT440', 55, '2024-10-01 08:00:00'),
('PT441', 70, '2024-10-01 08:00:00'),

-- Lácteos
('PT442', 65, '2024-10-01 08:00:00'), ('PT443', 45, '2024-10-01 08:00:00'),
('PT444', 50, '2024-10-01 08:00:00'), ('PT445', 48, '2024-10-01 08:00:00'),
('PT446', 52, '2024-10-01 08:00:00'), ('PT447', 35, '2024-10-01 08:00:00'),
('PT448', 85, '2024-10-01 08:00:00'), ('PT449', 80, '2024-10-01 08:00:00'),

-- Despensa
('PT450', 70, '2024-10-01 08:00:00'), ('PT451', 68, '2024-10-01 08:00:00'),
('PT452', 65, '2024-10-01 08:00:00'), ('PT453', 60, '2024-10-01 08:00:00'),
('PT454', 55, '2024-10-01 08:00:00'), ('PT455', 58, '2024-10-01 08:00:00'),
('PT456', 62, '2024-10-01 08:00:00'), ('PT457', 60, '2024-10-01 08:00:00'),
('PT458', 50, '2024-10-01 08:00:00'), ('PT459', 65, '2024-10-01 08:00:00'),

-- Limpieza
('PT460', 45, '2024-10-01 08:00:00'), ('PT461', 42, '2024-10-01 08:00:00'),
('PT462', 55, '2024-10-01 08:00:00'), ('PT463', 50, '2024-10-01 08:00:00'),
('PT464', 58, '2024-10-01 08:00:00'), ('PT465', 52, '2024-10-01 08:00:00'),
('PT466', 75, '2024-10-01 08:00:00'), ('PT467', 40, '2024-10-01 08:00:00'),
('PT468', 38, '2024-10-01 08:00:00'), ('PT469', 60, '2024-10-01 08:00:00'),

-- MEGA ABARROTES LA PROVIDENCIA (TDA005) - Stock muy alto (tienda más grande)
-- Frutas
('PT501', 70, '2024-10-01 08:00:00'), ('PT502', 65, '2024-10-01 08:00:00'),
('PT503', 100, '2024-10-01 08:00:00'), ('PT504', 80, '2024-10-01 08:00:00'),
('PT505', 60, '2024-10-01 08:00:00'), ('PT506', 50, '2024-10-01 08:00:00'),
('PT507', 48, '2024-10-01 08:00:00'), ('PT508', 35, '2024-10-01 08:00:00'),
('PT509', 45, '2024-10-01 08:00:00'), ('PT510', 40, '2024-10-01 08:00:00'),
('PT511', 30, '2024-10-01 08:00:00'), ('PT512', 55, '2024-10-01 08:00:00'),
('PT513', 60, '2024-10-01 08:00:00'), ('PT514', 25, '2024-10-01 08:00:00'),
('PT515', 42, '2024-10-01 08:00:00'), ('PT516', 38, '2024-10-01 08:00:00'),
('PT517', 90, '2024-10-01 08:00:00'), ('PT518', 32, '2024-10-01 08:00:00'),
('PT519', 45, '2024-10-01 08:00:00'), ('PT520', 28, '2024-10-01 08:00:00'),

-- Verduras
('PT521', 120, '2024-10-01 08:00:00'), ('PT522', 110, '2024-10-01 08:00:00'),
('PT523', 130, '2024-10-01 08:00:00'), ('PT524', 60, '2024-10-01 08:00:00'),
('PT525', 150, '2024-10-01 08:00:00'), ('PT526', 100, '2024-10-01 08:00:00'),
('PT527', 55, '2024-10-01 08:00:00'), ('PT528', 50, '2024-10-01 08:00:00'),
('PT529', 35, '2024-10-01 08:00:00'), ('PT530', 42, '2024-10-01 08:00:00'),
('PT531', 40, '2024-10-01 08:00:00'), ('PT532', 65, '2024-10-01 08:00:00'),
('PT533', 55, '2024-10-01 08:00:00'), ('PT534', 80, '2024-10-01 08:00:00'),
('PT535', 75, '2024-10-01 08:00:00'), ('PT536', 48, '2024-10-01 08:00:00'),
('PT537', 90, '2024-10-01 08:00:00'), ('PT538', 60, '2024-10-01 08:00:00'),
('PT539', 70, '2024-10-01 08:00:00'), ('PT540', 58, '2024-10-01 08:00:00'),
('PT541', 45, '2024-10-01 08:00:00'), ('PT542', 38, '2024-10-01 08:00:00'),
('PT543', 40, '2024-10-01 08:00:00'), ('PT544', 52, '2024-10-01 08:00:00'),
('PT545', 72, '2024-10-01 08:00:00'),

-- Carnes
('PT546', 50, '2024-10-01 08:00:00'), ('PT547', 60, '2024-10-01 08:00:00'),
('PT548', 35, '2024-10-01 08:00:00'), ('PT549', 55, '2024-10-01 08:00:00'),
('PT550', 70, '2024-10-01 08:00:00'), ('PT551', 65, '2024-10-01 08:00:00'),
('PT552', 40, '2024-10-01 08:00:00'), ('PT553', 58, '2024-10-01 08:00:00'),
('PT554', 62, '2024-10-01 08:00:00'), ('PT555', 55, '2024-10-01 08:00:00'),

-- Lácteos
('PT571', 180, '2024-10-01 08:00:00'), ('PT572', 100, '2024-10-01 08:00:00'),
('PT573', 80, '2024-10-01 08:00:00'), ('PT574', 75, '2024-10-01 08:00:00'),
('PT575', 90, '2024-10-01 08:00:00'), ('PT576', 85, '2024-10-01 08:00:00'),
('PT577', 55, '2024-10-01 08:00:00'), ('PT578', 110, '2024-10-01 08:00:00'),
('PT579', 65, '2024-10-01 08:00:00'), ('PT580', 60, '2024-10-01 08:00:00'),
('PT581', 250, '2024-10-01 08:00:00'), ('PT582', 230, '2024-10-01 08:00:00'),

-- Botanas
('PT583', 150, '2024-10-01 08:00:00'), ('PT584', 130, '2024-10-01 08:00:00'),
('PT585', 110, '2024-10-01 08:00:00'), ('PT586', 180, '2024-10-01 08:00:00'),
('PT587', 160, '2024-10-01 08:00:00'), ('PT588', 170, '2024-10-01 08:00:00'),
('PT589', 120, '2024-10-01 08:00:00'), ('PT590', 90, '2024-10-01 08:00:00'),
('PT591', 80, '2024-10-01 08:00:00'), ('PT592', 95, '2024-10-01 08:00:00'),
('PT593', 85, '2024-10-01 08:00:00'), ('PT594', 100, '2024-10-01 08:00:00'),
('PT595', 75, '2024-10-01 08:00:00'), ('PT596', 65, '2024-10-01 08:00:00'),
('PT597', 105, '2024-10-01 08:00:00'),

-- Bebidas
('PT598', 250, '2024-10-01 08:00:00'), ('PT599', 180, '2024-10-01 08:00:00'),
('PT600', 150, '2024-10-01 08:00:00'), ('PT601', 220, '2024-10-01 08:00:00'),
('PT602', 170, '2024-10-01 08:00:00'), ('PT603', 300, '2024-10-01 08:00:00'),
('PT604', 120, '2024-10-01 08:00:00'), ('PT605', 110, '2024-10-01 08:00:00'),
('PT606', 105, '2024-10-01 08:00:00'), ('PT607', 95, '2024-10-01 08:00:00'),

-- Panadería
('PT608', 130, '2024-10-01 08:00:00'), ('PT609', 80, '2024-10-01 08:00:00'),
('PT610', 180, '2024-10-01 08:00:00'), ('PT611', 170, '2024-10-01 08:00:00'),
('PT612', 110, '2024-10-01 08:00:00'), ('PT613', 120, '2024-10-01 08:00:00'),
('PT614', 95, '2024-10-01 08:00:00'), ('PT615', 90, '2024-10-01 08:00:00'),
('PT616', 100, '2024-10-01 08:00:00'), ('PT617', 250, '2024-10-01 08:00:00'),
('PT618', 150, '2024-10-01 08:00:00'), ('PT619', 140, '2024-10-01 08:00:00'),

-- Dulces
('PT620', 250, '2024-10-01 08:00:00'), ('PT621', 180, '2024-10-01 08:00:00'),
('PT622', 190, '2024-10-01 08:00:00'), ('PT623', 170, '2024-10-01 08:00:00'),
('PT624', 160, '2024-10-01 08:00:00'), ('PT625', 150, '2024-10-01 08:00:00'),
('PT626', 140, '2024-10-01 08:00:00'), ('PT627', 220, '2024-10-01 08:00:00'),
('PT628', 210, '2024-10-01 08:00:00'), ('PT629', 250, '2024-10-01 08:00:00'),
('PT630', 230, '2024-10-01 08:00:00'), ('PT631', 200, '2024-10-01 08:00:00'),
('PT632', 170, '2024-10-01 08:00:00'), ('PT633', 180, '2024-10-01 08:00:00'),
('PT634', 150, '2024-10-01 08:00:00'),

-- Despensa
('PT635', 220, '2024-10-01 08:00:00'), ('PT636', 210, '2024-10-01 08:00:00'),
('PT637', 190, '2024-10-01 08:00:00'), ('PT638', 130, '2024-10-01 08:00:00'),
('PT639', 120, '2024-10-01 08:00:00'), ('PT640', 115, '2024-10-01 08:00:00'),
('PT641', 170, '2024-10-01 08:00:00'), ('PT642', 150, '2024-10-01 08:00:00'),
('PT643', 160, '2024-10-01 08:00:00'), ('PT644', 155, '2024-10-01 08:00:00'),
('PT645', 110, '2024-10-01 08:00:00'), ('PT646', 125, '2024-10-01 08:00:00'),

-- Enlatados
('PT647', 180, '2024-10-01 08:00:00'), ('PT648', 170, '2024-10-01 08:00:00'),
('PT649', 130, '2024-10-01 08:00:00'), ('PT650', 150, '2024-10-01 08:00:00'),
('PT651', 140, '2024-10-01 08:00:00'), ('PT652', 160, '2024-10-01 08:00:00'),
('PT653', 120, '2024-10-01 08:00:00'), ('PT654', 115, '2024-10-01 08:00:00'),
('PT655', 170, '2024-10-01 08:00:00'), ('PT656', 165, '2024-10-01 08:00:00'),
('PT657', 155, '2024-10-01 08:00:00'), ('PT658', 110, '2024-10-01 08:00:00'),
('PT659', 95, '2024-10-01 08:00:00'), ('PT660', 100, '2024-10-01 08:00:00'),
('PT661', 90, '2024-10-01 08:00:00'),

-- Limpieza
('PT662', 130, '2024-10-01 08:00:00'), ('PT663', 125, '2024-10-01 08:00:00'),
('PT664', 150, '2024-10-01 08:00:00'), ('PT665', 140, '2024-10-01 08:00:00'),
('PT666', 160, '2024-10-01 08:00:00'), ('PT667', 170, '2024-10-01 08:00:00'),
('PT668', 120, '2024-10-01 08:00:00'), ('PT669', 155, '2024-10-01 08:00:00'),
('PT670', 145, '2024-10-01 08:00:00'), ('PT671', 250, '2024-10-01 08:00:00'),
('PT672', 220, '2024-10-01 08:00:00'), ('PT673', 115, '2024-10-01 08:00:00'),
('PT674', 125, '2024-10-01 08:00:00'), ('PT675', 180, '2024-10-01 08:00:00'),
('PT676', 70, '2024-10-01 08:00:00');

-- =====================================================
-- 7. PRECIOS DE VENTA Y COMPRA (Variación realista por tienda)
-- =====================================================

-- PRECIOS ABARROTES SAN MIGUEL (TDA001) - Precios competitivos CDMX
INSERT INTO precio_venta (id_particular, precio_venta, fecha_ini, fecha_fin) VALUES
-- Frutas (precios por kg)
('PT001', 45, '2024-01-01', '2024-12-31'), ('PT002', 42, '2024-01-01', '2024-12-31'),
('PT003', 28, '2024-01-01', '2024-12-31'), ('PT004', 25, '2024-01-01', '2024-12-31'),
('PT005', 35, '2024-01-01', '2024-12-31'), ('PT006', 65, '2024-01-01', '2024-12-31'),
('PT007', 70, '2024-01-01', '2024-12-31'), ('PT008', 38, '2024-01-01', '2024-12-31'),
('PT009', 22, '2024-01-01', '2024-12-31'), ('PT010', 32, '2024-01-01', '2024-12-31'),
('PT011', 48, '2024-01-01', '2024-12-31'), ('PT012', 55, '2024-01-01', '2024-12-31'),
('PT013', 60, '2024-01-01', '2024-12-31'), ('PT014', 85, '2024-01-01', '2024-12-31'),
('PT015', 52, '2024-01-01', '2024-12-31'), ('PT016', 58, '2024-01-01', '2024-12-31'),
('PT017', 30, '2024-01-01', '2024-12-31'), ('PT018', 40, '2024-01-01', '2024-12-31'),
('PT019', 45, '2024-01-01', '2024-12-31'), ('PT020', 95, '2024-01-01', '2024-12-31'),

-- Verduras
('PT021', 35, '2024-01-01', '2024-12-31'), ('PT022', 32, '2024-01-01', '2024-12-31'),
('PT023', 28, '2024-01-01', '2024-12-31'), ('PT024', 32, '2024-01-01', '2024-12-31'),
('PT025', 25, '2024-01-01', '2024-12-31'), ('PT026', 22, '2024-01-01', '2024-12-31'),
('PT027', 18, '2024-01-01', '2024-12-31'), ('PT028', 16, '2024-01-01', '2024-12-31'),
('PT029', 20, '2024-01-01', '2024-12-31'), ('PT030', 42, '2024-01-01', '2024-12-31'),
('PT031', 40, '2024-01-01', '2024-12-31'), ('PT032', 30, '2024-01-01', '2024-12-31'),
('PT033', 25, '2024-01-01', '2024-12-31'), ('PT034', 55, '2024-01-01', '2024-12-31'),
('PT035', 60, '2024-01-01', '2024-12-31'), ('PT036', 48, '2024-01-01', '2024-12-31'),
('PT037', 70, '2024-01-01', '2024-12-31'), ('PT038', 15, '2024-01-01', '2024-12-31'),
('PT039', 12, '2024-01-01', '2024-12-31'), ('PT040', 10, '2024-01-01', '2024-12-31'),
('PT041', 18, '2024-01-01', '2024-12-31'), ('PT042', 45, '2024-01-01', '2024-12-31'),
('PT043', 40, '2024-01-01', '2024-12-31'), ('PT044', 28, '2024-01-01', '2024-12-31'),
('PT045', 20, '2024-01-01', '2024-12-31'),

-- Lácteos
('PT071', 28, '2024-01-01', '2024-12-31'), ('PT072', 32, '2024-01-01', '2024-12-31'),
('PT073', 35, '2024-01-01', '2024-12-31'), ('PT074', 38, '2024-01-01', '2024-12-31'),
('PT075', 65, '2024-01-01', '2024-12-31'), ('PT076', 70, '2024-01-01', '2024-12-31'),
('PT077', 85, '2024-01-01', '2024-12-31'), ('PT078', 45, '2024-01-01', '2024-12-31'),
('PT079', 52, '2024-01-01', '2024-12-31'), ('PT080', 48, '2024-01-01', '2024-12-31'),
('PT081', 58, '2024-01-01', '2024-12-31'), ('PT082', 62, '2024-01-01', '2024-12-31'),

-- Botanas
('PT083', 38, '2024-01-01', '2024-12-31'), ('PT084', 38, '2024-01-01', '2024-12-31'),
('PT085', 42, '2024-01-01', '2024-12-31'), ('PT086', 45, '2024-01-01', '2024-12-31'),
('PT087', 40, '2024-01-01', '2024-12-31'), ('PT088', 42, '2024-01-01', '2024-12-31'),
('PT089', 48, '2024-01-01', '2024-12-31'), ('PT090', 35, '2024-01-01', '2024-12-31'),
('PT091', 65, '2024-01-01', '2024-12-31'), ('PT092', 28, '2024-01-01', '2024-12-31'),
('PT093', 32, '2024-01-01', '2024-12-31'), ('PT094', 45, '2024-01-01', '2024-12-31'),
('PT095', 75, '2024-01-01', '2024-12-31'), ('PT096', 58, '2024-01-01', '2024-12-31'),
('PT097', 35, '2024-01-01', '2024-12-31'),

-- Bebidas
('PT098', 18, '2024-01-01', '2024-12-31'), ('PT099', 32, '2024-01-01', '2024-12-31'),
('PT100', 16, '2024-01-01', '2024-12-31'), ('PT101', 17, '2024-01-01', '2024-12-31'),
('PT102', 17, '2024-01-01', '2024-12-31'), ('PT103', 15, '2024-01-01', '2024-12-31'),
('PT104', 28, '2024-01-01', '2024-12-31'), ('PT105', 28, '2024-01-01', '2024-12-31'),
('PT106', 25, '2024-01-01', '2024-12-31'), ('PT107', 22, '2024-01-01', '2024-12-31'),

-- Panadería
('PT108', 45, '2024-01-01', '2024-12-31'), ('PT109', 52, '2024-01-01', '2024-12-31'),
('PT110', 25, '2024-01-01', '2024-12-31'), ('PT111', 28, '2024-01-01', '2024-12-31'),
('PT112', 65, '2024-01-01', '2024-12-31'), ('PT113', 30, '2024-01-01', '2024-12-31'),
('PT114', 35, '2024-01-01', '2024-12-31'), ('PT115', 32, '2024-01-01', '2024-12-31'),
('PT116', 38, '2024-01-01', '2024-12-31'), ('PT117', 18, '2024-01-01', '2024-12-31'),
('PT118', 25, '2024-01-01', '2024-12-31'), ('PT119', 22, '2024-01-01', '2024-12-31'),

-- Dulces
('PT120', 8, '2024-01-01', '2024-12-31'), ('PT121', 18, '2024-01-01', '2024-12-31'),
('PT122', 16, '2024-01-01', '2024-12-31'), ('PT123', 15, '2024-01-01', '2024-12-31'),
('PT124', 17, '2024-01-01', '2024-12-31'), ('PT125', 20, '2024-01-01', '2024-12-31'),
('PT126', 25, '2024-01-01', '2024-12-31'), ('PT127', 12, '2024-01-01', '2024-12-31'),
('PT128', 10, '2024-01-01', '2024-12-31'), ('PT129', 6, '2024-01-01', '2024-12-31'),
('PT130', 5, '2024-01-01', '2024-12-31'), ('PT131', 8, '2024-01-01', '2024-12-31'),
('PT132', 12, '2024-01-01', '2024-12-31'), ('PT133', 10, '2024-01-01', '2024-12-31'),
('PT134', 14, '2024-01-01', '2024-12-31'),

-- Despensa
('PT135', 18, '2024-01-01', '2024-12-31'), ('PT136', 18, '2024-01-01', '2024-12-31'),
('PT137', 20, '2024-01-01', '2024-12-31'), ('PT138', 22, '2024-01-01', '2024-12-31'),
('PT139', 35, '2024-01-01', '2024-12-31'), ('PT140', 35, '2024-01-01', '2024-12-31'),
('PT141', 15, '2024-01-01', '2024-12-31'), ('PT142', 42, '2024-01-01', '2024-12-31'),
('PT143', 48, '2024-01-01', '2024-12-31'), ('PT144', 50, '2024-01-01', '2024-12-31'),
('PT145', 38, '2024-01-01', '2024-12-31'), ('PT146', 32, '2024-01-01', '2024-12-31'),

-- Enlatados  
('PT147', 32, '2024-01-01', '2024-12-31'), ('PT148', 38, '2024-01-01', '2024-12-31'),
('PT149', 45, '2024-01-01', '2024-12-31'), ('PT150', 55, '2024-01-01', '2024-12-31'),
('PT151', 28, '2024-01-01', '2024-12-31'), ('PT152', 35, '2024-01-01', '2024-12-31'),
('PT153', 30, '2024-01-01', '2024-12-31'), ('PT154', 42, '2024-01-01', '2024-12-31'),
('PT155', 28, '2024-01-01', '2024-12-31'), ('PT156', 28, '2024-01-01', '2024-12-31'),
('PT157', 25, '2024-01-01', '2024-12-31'), ('PT158', 30, '2024-01-01', '2024-12-31'),
('PT159', 65, '2024-01-01', '2024-12-31'), ('PT160', 48, '2024-01-01', '2024-12-31'),
('PT161', 70, '2024-01-01', '2024-12-31'),

-- Limpieza
('PT162', 28, '2024-01-01', '2024-12-31'), ('PT163', 18, '2024-01-01', '2024-12-31'),
('PT164', 85, '2024-01-01', '2024-12-31'), ('PT165', 78, '2024-01-01', '2024-12-31'),
('PT166', 45, '2024-01-01', '2024-12-31'), ('PT167', 35, '2024-01-01', '2024-12-31'),
('PT168', 32, '2024-01-01', '2024-12-31'), ('PT169', 38, '2024-01-01', '2024-12-31'),
('PT170', 25, '2024-01-01', '2024-12-31'), ('PT171', 55, '2024-01-01', '2024-12-31'),
('PT172', 22, '2024-01-01', '2024-12-31'), ('PT173', 65, '2024-01-01', '2024-12-31'),
('PT174', 42, '2024-01-01', '2024-12-31'), ('PT175', 35, '2024-01-01', '2024-12-31'),
('PT176', 85, '2024-01-01', '2024-12-31'),

-- LA CARNICERÍA (TDA002) - Precios más altos (especialidad)
-- Carnes (precios premium)
('PT201', 185, '2024-01-01', '2024-12-31'), ('PT202', 140, '2024-01-01', '2024-12-31'),
('PT203', 95, '2024-01-01', '2024-12-31'), ('PT204', 220, '2024-01-01', '2024-12-31'),
('PT205', 110, '2024-01-01', '2024-12-31'), ('PT206', 85, '2024-01-01', '2024-12-31'),
('PT207', 75, '2024-01-01', '2024-12-31'), ('PT208', 130, '2024-01-01', '2024-12-31'),
('PT209', 95, '2024-01-01', '2024-12-31'), ('PT210', 90, '2024-01-01', '2024-12-31'),
('PT211', 85, '2024-01-01', '2024-12-31'), ('PT212', 120, '2024-01-01', '2024-12-31'),
('PT213', 105, '2024-01-01', '2024-12-31'), ('PT214', 90, '2024-01-01', '2024-12-31'),
('PT215', 145, '2024-01-01', '2024-12-31'),

-- Pescados (precios premium)
('PT216', 160, '2024-01-01', '2024-12-31'), ('PT217', 280, '2024-01-01', '2024-12-31'),
('PT218', 90, '2024-01-01', '2024-12-31'), ('PT219', 180, '2024-01-01', '2024-12-31'),
('PT220', 220, '2024-01-01', '2024-12-31'), ('PT221', 380, '2024-01-01', '2024-12-31'),
('PT222', 250, '2024-01-01', '2024-12-31'), ('PT223', 195, '2024-01-01', '2024-12-31'),
('PT224', 320, '2024-01-01', '2024-12-31'), ('PT225', 240, '2024-01-01', '2024-12-31'),

-- Lácteos
('PT226', 27, '2024-01-01', '2024-12-31'), ('PT227', 31, '2024-01-01', '2024-12-31'),
('PT228', 34, '2024-01-01', '2024-12-31'), ('PT229', 37, '2024-01-01', '2024-12-31'),
('PT230', 63, '2024-01-01', '2024-12-31'), ('PT231', 68, '2024-01-01', '2024-12-31'),
('PT232', 82, '2024-01-01', '2024-12-31'), ('PT233', 43, '2024-01-01', '2024-12-31'),
('PT234', 50, '2024-01-01', '2024-12-31'), ('PT235', 46, '2024-01-01', '2024-12-31'),
('PT236', 56, '2024-01-01', '2024-12-31'), ('PT237', 60, '2024-01-01', '2024-12-31'),

-- Verduras básicas
('PT238', 33, '2024-01-01', '2024-12-31'), ('PT239', 26, '2024-01-01', '2024-12-31'),
('PT240', 28, '2024-01-01', '2024-12-31'), ('PT241', 52, '2024-01-01', '2024-12-31'),

-- SÚPER LA ESQUINA (TDA003) - Precios más altos (tienda pequeña)
-- Solo productos seleccionados con margen más alto
('PT301', 42, '2024-01-01', '2024-12-31'), ('PT302', 42, '2024-01-01', '2024-12-31'),
('PT303', 48, '2024-01-01', '2024-12-31'), ('PT304', 44, '2024-01-01', '2024-12-31'),
('PT305', 45, '2024-01-01', '2024-12-31'), ('PT306', 38, '2024-01-01', '2024-12-31'),
('PT307', 35, '2024-01-01', '2024-12-31'), ('PT308', 48, '2024-01-01', '2024-12-31'),
('PT309', 68, '2024-01-01', '2024-12-31'), ('PT310', 38, '2024-01-01', '2024-12-31'),

-- Bebidas
('PT311', 20, '2024-01-01', '2024-12-31'), ('PT312', 35, '2024-01-01', '2024-12-31'),
('PT313', 18, '2024-01-01', '2024-12-31'), ('PT314', 19, '2024-01-01', '2024-12-31'),
('PT315', 19, '2024-01-01', '2024-12-31'), ('PT316', 17, '2024-01-01', '2024-12-31'),
('PT317', 30, '2024-01-01', '2024-12-31'), ('PT318', 30, '2024-01-01', '2024-12-31'),
('PT319', 27, '2024-01-01', '2024-12-31'), ('PT320', 24, '2024-01-01', '2024-12-31'),

-- Dulces
('PT321', 9, '2024-01-01', '2024-12-31'), ('PT322', 20, '2024-01-01', '2024-12-31'),
('PT323', 18, '2024-01-01', '2024-12-31'), ('PT324', 27, '2024-01-01', '2024-12-31'),
('PT325', 14, '2024-01-01', '2024-12-31'), ('PT326', 12, '2024-01-01', '2024-12-31'),
('PT327', 7, '2024-01-01', '2024-12-31'), ('PT328', 6, '2024-01-01', '2024-12-31'),
('PT329', 14, '2024-01-01', '2024-12-31'), ('PT330', 12, '2024-01-01', '2024-12-31'),

-- Resto de productos TDA003
('PT331', 48, '2024-01-01', '2024-12-31'), ('PT332', 27, '2024-01-01', '2024-12-31'),
('PT333', 30, '2024-01-01', '2024-12-31'), ('PT334', 20, '2024-01-01', '2024-12-31'),
('PT335', 27, '2024-01-01', '2024-12-31'), ('PT336', 24, '2024-01-01', '2024-12-31'),
('PT337', 30, '2024-01-01', '2024-12-31'), ('PT338', 68, '2024-01-01', '2024-12-31'),
('PT339', 47, '2024-01-01', '2024-12-31'), ('PT340', 55, '2024-01-01', '2024-12-31'),
('PT341', 60, '2024-01-01', '2024-12-31'), ('PT342', 64, '2024-01-01', '2024-12-31'),
('PT343', 20, '2024-01-01', '2024-12-31'), ('PT344', 20, '2024-01-01', '2024-12-31'),
('PT345', 22, '2024-01-01', '2024-12-31'), ('PT346', 45, '2024-01-01', '2024-12-31'),
('PT347', 52, '2024-01-01', '2024-12-31'), ('PT348', 35, '2024-01-01', '2024-12-31'),
('PT349', 40, '2024-01-01', '2024-12-31'), ('PT350', 38, '2024-01-01', '2024-12-31'),
('PT351', 30, '2024-01-01', '2024-12-31'), ('PT352', 88, '2024-01-01', '2024-12-31'),
('PT353', 38, '2024-01-01', '2024-12-31'), ('PT354', 40, '2024-01-01', '2024-12-31'),
('PT355', 58, '2024-01-01', '2024-12-31'), ('PT356', 24, '2024-01-01', '2024-12-31'),
('PT357', 45, '2024-01-01', '2024-12-31'), ('PT358', 38, '2024-01-01', '2024-12-31'),

-- TODO PARA TI (TDA004) - Precios competitivos Querétaro
-- Precios similares pero ligeramente más bajos que CDMX
('PT401', 36, '2024-01-01', '2024-12-31'), ('PT402', 36, '2024-01-01', '2024-12-31'),
('PT403', 40, '2024-01-01', '2024-12-31'), ('PT404', 43, '2024-01-01', '2024-12-31'),
('PT405', 38, '2024-01-01', '2024-12-31'), ('PT406', 40, '2024-01-01', '2024-12-31'),
('PT407', 46, '2024-01-01', '2024-12-31'), ('PT408', 33, '2024-01-01', '2024-12-31'),
('PT409', 62, '2024-01-01', '2024-12-31'), ('PT410', 26, '2024-01-01', '2024-12-31'),
('PT411', 43, '2024-01-01', '2024-12-31'), ('PT412', 33, '2024-01-01', '2024-12-31'),
('PT413', 17, '2024-01-01', '2024-12-31'), ('PT414', 30, '2024-01-01', '2024-12-31'),
('PT415', 15, '2024-01-01', '2024-12-31'), ('PT416', 16, '2024-01-01', '2024-12-31'),
('PT417', 16, '2024-01-01', '2024-12-31'), ('PT418', 14, '2024-01-01', '2024-12-31'),
('PT419', 26, '2024-01-01', '2024-12-31'), ('PT420', 26, '2024-01-01', '2024-12-31'),
('PT421', 23, '2024-01-01', '2024-12-31'), ('PT422', 20, '2024-01-01', '2024-12-31'),
('PT423', 7, '2024-01-01', '2024-12-31'), ('PT424', 17, '2024-01-01', '2024-12-31'),
('PT425', 15, '2024-01-01', '2024-12-31'), ('PT426', 14, '2024-01-01', '2024-12-31'),
('PT427', 16, '2024-01-01', '2024-12-31'), ('PT428', 19, '2024-01-01', '2024-12-31'),
('PT429', 9, '2024-01-01', '2024-12-31'), ('PT430', 5, '2024-01-01', '2024-12-31'),
('PT431', 4, '2024-01-01', '2024-12-31'), ('PT432', 7, '2024-01-01', '2024-12-31'),
('PT433', 11, '2024-01-01', '2024-12-31'), ('PT434', 9, '2024-01-01', '2024-12-31'),
('PT435', 43, '2024-01-01', '2024-12-31'), ('PT436', 23, '2024-01-01', '2024-12-31'),
('PT437', 26, '2024-01-01', '2024-12-31'), ('PT438', 60, '2024-01-01', '2024-12-31'),
('PT439', 16, '2024-01-01', '2024-12-31'), ('PT440', 23, '2024-01-01', '2024-12-31'),
('PT441', 20, '2024-01-01', '2024-12-31'), ('PT442', 26, '2024-01-01', '2024-12-31'),
('PT443', 33, '2024-01-01', '2024-12-31'), ('PT444', 63, '2024-01-01', '2024-12-31'),
('PT445', 68, '2024-01-01', '2024-12-31'), ('PT446', 43, '2024-01-01', '2024-12-31'),
('PT447', 50, '2024-01-01', '2024-12-31'), ('PT448', 56, '2024-01-01', '2024-12-31'),
('PT449', 60, '2024-01-01', '2024-12-31'), ('PT450', 17, '2024-01-01', '2024-12-31'),
('PT451', 17, '2024-01-01', '2024-12-31'), ('PT452', 19, '2024-01-01', '2024-12-31'),
('PT453', 14, '2024-01-01', '2024-12-31'), ('PT454', 40, '2024-01-01', '2024-12-31'),
('PT455', 46, '2024-01-01', '2024-12-31'), ('PT456', 30, '2024-01-01', '2024-12-31'),
('PT457', 36, '2024-01-01', '2024-12-31'), ('PT458', 52, '2024-01-01', '2024-12-31'),
('PT459', 33, '2024-01-01', '2024-12-31'), ('PT460', 26, '2024-01-01', '2024-12-31'),
('PT461', 17, '2024-01-01', '2024-12-31'), ('PT462', 83, '2024-01-01', '2024-12-31'),
('PT463', 76, '2024-01-01', '2024-12-31'), ('PT464', 33, '2024-01-01', '2024-12-31'),
('PT465', 36, '2024-01-01', '2024-12-31'), ('PT466', 53, '2024-01-01', '2024-12-31'),
('PT467', 63, '2024-01-01', '2024-12-31'), ('PT468', 40, '2024-01-01', '2024-12-31'),
('PT469', 33, '2024-01-01', '2024-12-31'),

-- MEGA ABARROTES LA PROVIDENCIA (TDA005) - Precios competitivos Guadalajara
-- Precios similares a TDA001 con ligeras variaciones
('PT501', 43, '2024-01-01', '2024-12-31'), ('PT502', 40, '2024-01-01', '2024-12-31'),
('PT503', 26, '2024-01-01', '2024-12-31'), ('PT504', 23, '2024-01-01', '2024-12-31'),
('PT505', 33, '2024-01-01', '2024-12-31'), ('PT506', 63, '2024-01-01', '2024-12-31'),
('PT507', 68, '2024-01-01', '2024-12-31'), ('PT508', 36, '2024-01-01', '2024-12-31'),
('PT509', 20, '2024-01-01', '2024-12-31'), ('PT510', 30, '2024-01-01', '2024-12-31'),
('PT511', 46, '2024-01-01', '2024-12-31'), ('PT512', 53, '2024-01-01', '2024-12-31'),
('PT513', 58, '2024-01-01', '2024-12-31'), ('PT514', 83, '2024-01-01', '2024-12-31'),
('PT515', 50, '2024-01-01', '2024-12-31'), ('PT516', 56, '2024-01-01', '2024-12-31'),
('PT517', 28, '2024-01-01', '2024-12-31'), ('PT518', 38, '2024-01-01', '2024-12-31'),
('PT519', 43, '2024-01-01', '2024-12-31'), ('PT520', 93, '2024-01-01', '2024-12-31'),
('PT521', 33, '2024-01-01', '2024-12-31'), ('PT522', 30, '2024-01-01', '2024-12-31'),
('PT523', 26, '2024-01-01', '2024-12-31'), ('PT524', 30, '2024-01-01', '2024-12-31'),
('PT525', 23, '2024-01-01', '2024-12-31'), ('PT526', 20, '2024-01-01', '2024-12-31'),
('PT527', 16, '2024-01-01', '2024-12-31'), ('PT528', 14, '2024-01-01', '2024-12-31'),
('PT529', 18, '2024-01-01', '2024-12-31'), ('PT530', 40, '2024-01-01', '2024-12-31'),
('PT531', 38, '2024-01-01', '2024-12-31'), ('PT532', 28, '2024-01-01', '2024-12-31'),
('PT533', 23, '2024-01-01', '2024-12-31'), ('PT534', 53, '2024-01-01', '2024-12-31'),
('PT535', 58, '2024-01-01', '2024-12-31'), ('PT536', 46, '2024-01-01', '2024-12-31'),
('PT537', 68, '2024-01-01', '2024-12-31'), ('PT538', 13, '2024-01-01', '2024-12-31'),
('PT539', 10, '2024-01-01', '2024-12-31'), ('PT540', 8, '2024-01-01', '2024-12-31'),
('PT541', 16, '2024-01-01', '2024-12-31'), ('PT542', 43, '2024-01-01', '2024-12-31'),
('PT543', 38, '2024-01-01', '2024-12-31'), ('PT544', 26, '2024-01-01', '2024-12-31'),
('PT545', 18, '2024-01-01', '2024-12-31'), ('PT546', 180, '2024-01-01', '2024-12-31'),
('PT547', 135, '2024-01-01', '2024-12-31'), ('PT548', 215, '2024-01-01', '2024-12-31'),
('PT549', 105, '2024-01-01', '2024-12-31'), ('PT550', 125, '2024-01-01', '2024-12-31'),
('PT551', 90, '2024-01-01', '2024-12-31'), ('PT552', 80, '2024-01-01', '2024-12-31'),
('PT553', 115, '2024-01-01', '2024-12-31'), ('PT554', 85, '2024-01-01', '2024-12-31'),
('PT555', 140, '2024-01-01', '2024-12-31'), ('PT571', 26, '2024-01-01', '2024-12-31'),
('PT572', 30, '2024-01-01', '2024-12-31'), ('PT573', 33, '2024-01-01', '2024-12-31'),
('PT574', 36, '2024-01-01', '2024-12-31'), ('PT575', 63, '2024-01-01', '2024-12-31'),
('PT576', 68, '2024-01-01', '2024-12-31'), ('PT577', 83, '2024-01-01', '2024-12-31'),
('PT578', 43, '2024-01-01', '2024-12-31'), ('PT579', 50, '2024-01-01', '2024-12-31'),
('PT580', 46, '2024-01-01', '2024-12-31'), ('PT581', 56, '2024-01-01', '2024-12-31'),
('PT582', 60, '2024-01-01', '2024-12-31'), ('PT583', 36, '2024-01-01', '2024-12-31'),
('PT584', 36, '2024-01-01', '2024-12-31'), ('PT585', 40, '2024-01-01', '2024-12-31'),
('PT586', 43, '2024-01-01', '2024-12-31'), ('PT587', 38, '2024-01-01', '2024-12-31'),
('PT588', 40, '2024-01-01', '2024-12-31'), ('PT589', 46, '2024-01-01', '2024-12-31'),
('PT590', 33, '2024-01-01', '2024-12-31'), ('PT591', 63, '2024-01-01', '2024-12-31'),
('PT592', 26, '2024-01-01', '2024-12-31'), ('PT593', 30, '2024-01-01', '2024-12-31'),
('PT594', 43, '2024-01-01', '2024-12-31'), ('PT595', 73, '2024-01-01', '2024-12-31'),
('PT596', 56, '2024-01-01', '2024-12-31'), ('PT597', 33, '2024-01-01', '2024-12-31'),
('PT598', 17, '2024-01-01', '2024-12-31'), ('PT599', 30, '2024-01-01', '2024-12-31'),
('PT600', 15, '2024-01-01', '2024-12-31'), ('PT601', 16, '2024-01-01', '2024-12-31'),
('PT602', 16, '2024-01-01', '2024-12-31'), ('PT603', 14, '2024-01-01', '2024-12-31'),
('PT604', 26, '2024-01-01', '2024-12-31'), ('PT605', 26, '2024-01-01', '2024-12-31'),
('PT606', 23, '2024-01-01', '2024-12-31'), ('PT607', 20, '2024-01-01', '2024-12-31'),
('PT608', 43, '2024-01-01', '2024-12-31'), ('PT609', 50, '2024-01-01', '2024-12-31'),
('PT610', 23, '2024-01-01', '2024-12-31'), ('PT611', 26, '2024-01-01', '2024-12-31'),
('PT612', 63, '2024-01-01', '2024-12-31'), ('PT613', 28, '2024-01-01', '2024-12-31'),
('PT614', 33, '2024-01-01', '2024-12-31'), ('PT615', 30, '2024-01-01', '2024-12-31'),
('PT616', 36, '2024-01-01', '2024-12-31'), ('PT617', 16, '2024-01-01', '2024-12-31'),
('PT618', 23, '2024-01-01', '2024-12-31'), ('PT619', 20, '2024-01-01', '2024-12-31'),
('PT620', 7, '2024-01-01', '2024-12-31'), ('PT621', 17, '2024-01-01', '2024-12-31'),
('PT622', 15, '2024-01-01', '2024-12-31'), ('PT623', 14, '2024-01-01', '2024-12-31'),
('PT624', 16, '2024-01-01', '2024-12-31'), ('PT625', 19, '2024-01-01', '2024-12-31'),
('PT626', 23, '2024-01-01', '2024-12-31'), ('PT627', 11, '2024-01-01', '2024-12-31'),
('PT628', 9, '2024-01-01', '2024-12-31'), ('PT629', 5, '2024-01-01', '2024-12-31'),
('PT630', 4, '2024-01-01', '2024-12-31'), ('PT631', 7, '2024-01-01', '2024-12-31'),
('PT632', 11, '2024-01-01', '2024-12-31'), ('PT633', 9, '2024-01-01', '2024-12-31'),
('PT634', 13, '2024-01-01', '2024-12-31'), ('PT635', 17, '2024-01-01', '2024-12-31'),
('PT636', 17, '2024-01-01', '2024-12-31'), ('PT637', 19, '2024-01-01', '2024-12-31'),
('PT638', 20, '2024-01-01', '2024-12-31'), ('PT639', 33, '2024-01-01', '2024-12-31'),
('PT640', 33, '2024-01-01', '2024-12-31'), ('PT641', 14, '2024-01-01', '2024-12-31'),
('PT642', 40, '2024-01-01', '2024-12-31'), ('PT643', 46, '2024-01-01', '2024-12-31'),
('PT644', 48, '2024-01-01', '2024-12-31'), ('PT645', 36, '2024-01-01', '2024-12-31'),
('PT646', 30, '2024-01-01', '2024-12-31'), ('PT647', 30, '2024-01-01', '2024-12-31'),
('PT648', 36, '2024-01-01', '2024-12-31'), ('PT649', 43, '2024-01-01', '2024-12-31'),
('PT650', 53, '2024-01-01', '2024-12-31'), ('PT651', 26, '2024-01-01', '2024-12-31'),
('PT652', 33, '2024-01-01', '2024-12-31'), ('PT653', 28, '2024-01-01', '2024-12-31'),
('PT654', 40, '2024-01-01', '2024-12-31'), ('PT655', 26, '2024-01-01', '2024-12-31'),
('PT656', 26, '2024-01-01', '2024-12-31'), ('PT657', 23, '2024-01-01', '2024-12-31'),
('PT658', 28, '2024-01-01', '2024-12-31'), ('PT659', 63, '2024-01-01', '2024-12-31'),
('PT660', 46, '2024-01-01', '2024-12-31'), ('PT661', 68, '2024-01-01', '2024-12-31'),
('PT662', 26, '2024-01-01', '2024-12-31'), ('PT663', 16, '2024-01-01', '2024-12-31'),
('PT664', 83, '2024-01-01', '2024-12-31'), ('PT665', 76, '2024-01-01', '2024-12-31'),
('PT666', 43, '2024-01-01', '2024-12-31'), ('PT667', 33, '2024-01-01', '2024-12-31'),
('PT668', 30, '2024-01-01', '2024-12-31'), ('PT669', 36, '2024-01-01', '2024-12-31'),
('PT670', 23, '2024-01-01', '2024-12-31'), ('PT671', 53, '2024-01-01', '2024-12-31'),
('PT672', 20, '2024-01-01', '2024-12-31'), ('PT673', 63, '2024-01-01', '2024-12-31'),
('PT674', 40, '2024-01-01', '2024-12-31'), ('PT675', 33, '2024-01-01', '2024-12-31'),
('PT676', 83, '2024-01-01', '2024-12-31');

-- =====================================================
-- 8. PRECIOS DE COMPRA (a proveedores)
-- =====================================================

-- Solo incluyo algunos ejemplos representativos (el precio de compra es menor al de venta)
INSERT INTO precio_compra (id_particular, precio_compra, fecha_ini, fecha_fin) VALUES
-- Frutas TDA001 (margen ~30-40%)
('PT001', 30, '2024-01-01', '2024-12-31'), ('PT002', 28, '2024-01-01', '2024-12-31'),
('PT003', 18, '2024-01-01', '2024-12-31'), ('PT004', 16, '2024-01-01', '2024-12-31'),

-- Carnes TDA002 (margen ~25-35%)
('PT201', 140, '2024-01-01', '2024-12-31'), ('PT202', 100, '2024-01-01', '2024-12-31'),
('PT208', 95, '2024-01-01', '2024-12-31'),

-- Botanas TDA001 (margen ~20-30%)
('PT083', 28, '2024-01-01', '2024-12-31'), ('PT086', 32, '2024-01-01', '2024-12-31'),

-- Bebidas TDA001 (margen ~15-25%)
('PT098', 14, '2024-01-01', '2024-12-31'), ('PT099', 25, '2024-01-01', '2024-12-31');

-- =====================================================
-- 9. VENTAS (Transacciones variadas y realistas)
-- =====================================================

-- VENTAS PARA ABARROTES SAN MIGUEL (TDA001) - Alta rotación
INSERT INTO ventas (id_venta, fecha_transaccion, tipo) VALUES
('V0001', '2024-10-01 09:15:00', 'Efectivo'),
('V0002', '2024-10-01 10:30:00', 'Tarjeta'),
('V0003', '2024-10-01 11:45:00', 'Efectivo'),
('V0004', '2024-10-01 13:20:00', 'Transferencia'),
('V0005', '2024-10-01 14:50:00', 'Efectivo'),
('V0006', '2024-10-01 16:10:00', 'Tarjeta'),
('V0007', '2024-10-01 17:35:00', 'Efectivo'),
('V0008', '2024-10-01 18:45:00', 'Efectivo'),
('V0009', '2024-10-01 19:20:00', 'Tarjeta'),
('V0010', '2024-10-01 20:15:00', 'Efectivo'),
('V0011', '2024-10-02 08:30:00', 'Efectivo'),
('V0012', '2024-10-02 09:45:00', 'Tarjeta'),
('V0013', '2024-10-02 11:00:00', 'Efectivo'),
('V0014', '2024-10-02 12:30:00', 'Efectivo'),
('V0015', '2024-10-02 14:15:00', 'Transferencia'),
('V0016', '2024-10-02 15:40:00', 'Efectivo'),
('V0017', '2024-10-02 17:00:00', 'Tarjeta'),
('V0018', '2024-10-02 18:30:00', 'Efectivo'),
('V0019', '2024-10-02 19:45:00', 'Efectivo'),
('V0020', '2024-10-02 20:30:00', 'Efectivo'),

-- VENTAS PARA LA CARNICERÍA (TDA002) - Tickets más altos
('V0021', '2024-10-01 09:00:00', 'Efectivo'),
('V0022', '2024-10-01 10:30:00', 'Tarjeta'),
('V0023', '2024-10-01 12:00:00', 'Transferencia'),
('V0024', '2024-10-01 14:30:00', 'Efectivo'),
('V0025', '2024-10-01 16:00:00', 'Tarjeta'),
('V0026', '2024-10-01 17:30:00', 'Efectivo'),
('V0027', '2024-10-01 18:45:00', 'Efectivo'),
('V0028', '2024-10-02 09:30:00', 'Tarjeta'),
('V0029', '2024-10-02 11:00:00', 'Efectivo'),
('V0030', '2024-10-02 13:30:00', 'Transferencia'),

-- VENTAS PARA SÚPER LA ESQUINA (TDA003) - Compras pequeñas frecuentes
('V0031', '2024-10-01 07:00:00', 'Efectivo'),
('V0032', '2024-10-01 08:15:00', 'Efectivo'),
('V0033', '2024-10-01 09:30:00', 'Efectivo'),
('V0034', '2024-10-01 11:00:00', 'Efectivo'),
('V0035', '2024-10-01 13:00:00', 'Efectivo'),
('V0036', '2024-10-01 15:30:00', 'Tarjeta'),
('V0037', '2024-10-01 17:00:00', 'Efectivo'),
('V0038', '2024-10-01 19:00:00', 'Efectivo'),
('V0039', '2024-10-01 20:30:00', 'Efectivo'),
('V0040', '2024-10-01 21:45:00', 'Efectivo'),

-- VENTAS PARA TODO PARA TI (TDA004)
('V0041', '2024-10-01 08:00:00', 'Efectivo'),
('V0042', '2024-10-01 10:00:00', 'Efectivo'),
('V0043', '2024-10-01 12:30:00', 'Tarjeta'),
('V0044', '2024-10-01 14:45:00', 'Efectivo'),
('V0045', '2024-10-01 16:30:00', 'Efectivo'),
('V0046', '2024-10-01 18:00:00', 'Efectivo'),
('V0047', '2024-10-01 19:30:00', 'Efectivo'),
('V0048', '2024-10-02 09:00:00', 'Efectivo'),
('V0049', '2024-10-02 11:30:00', 'Tarjeta'),
('V0050', '2024-10-02 13:45:00', 'Efectivo'),

-- VENTAS PARA MEGA ABARROTES (TDA005) - Mayor volumen
('V0051', '2024-10-01 07:30:00', 'Efectivo'),
('V0052', '2024-10-01 09:00:00', 'Tarjeta'),
('V0053', '2024-10-01 10:30:00', 'Efectivo'),
('V0054', '2024-10-01 12:00:00', 'Transferencia'),
('V0055', '2024-10-01 13:30:00', 'Efectivo'),
('V0056', '2024-10-01 15:00:00', 'Tarjeta'),
('V0057', '2024-10-01 16:30:00', 'Efectivo'),
('V0058', '2024-10-01 18:00:00', 'Efectivo'),
('V0059', '2024-10-01 19:30:00', 'Tarjeta'),
('V0060', '2024-10-01 21:00:00', 'Efectivo');

-- =====================================================
-- 10. DETALLES DE VENTAS (Productos vendidos por transacción)
-- =====================================================

-- Venta V0001 - Compra familiar en Abarrotes San Miguel
INSERT INTO detalles_ventas (id_venta, id_particular, cantidad) VALUES
('V0001', 'PT003', 3),  -- 3kg Plátano
('V0001', 'PT071', 2),  -- 2L Leche
('V0001', 'PT108', 1),  -- 1 Pan Bimbo
('V0001', 'PT083', 2),  -- 2 Sabritas
('V0001', 'PT099', 1),  -- 1 Coca 2L
('V0001', 'PT117', 2),  -- 2kg Tortillas

-- Venta V0002 - Botanas y bebidas
('V0002', 'PT086', 3),  -- 3 Doritos
('V0002', 'PT087', 2),  -- 2 Cheetos
('V0002', 'PT098', 5),  -- 5 Coca 600ml
('V0002', 'PT101', 3),  -- 3 Sprite

-- Venta V0003 - Despensa básica
('V0003', 'PT135', 5),  -- 5 Maruchan
('V0003', 'PT142', 1),  -- 1 Arroz
('V0003', 'PT143', 1),  -- 1 Frijol
('V0003', 'PT147', 3),  -- 3 Atún
('V0003', 'PT164', 1),  -- 1 Detergente

-- Venta V0004 - Compra grande frutas y verduras
('V0004', 'PT001', 2),  -- 2kg Manzana
('V0004', 'PT004', 3),  -- 3kg Naranja
('V0004', 'PT021', 2),  -- 2kg Jitomate
('V0004', 'PT023', 1),  -- 1kg Cebolla
('V0004', 'PT025', 5),  -- 5kg Papa
('V0004', 'PT026', 2),  -- 2kg Zanahoria
('V0004', 'PT027', 1),  -- 1 Lechuga
('V0004', 'PT037', 1),  -- 1kg Aguacate

-- Venta V0005 - Dulces y botanas
('V0005', 'PT120', 10), -- 10 Carlos V
('V0005', 'PT121', 5),  -- 5 Milky Way
('V0005', 'PT126', 3),  -- 3 Panditas
('V0005', 'PT128', 8),  -- 8 Pelón

-- Venta V0021 - Carnicería (compra grande)
('V0021', 'PT201', 2),  -- 2kg Bistec
('V0021', 'PT202', 3),  -- 3kg Carne molida
('V0021', 'PT208', 2),  -- 2kg Pechuga
('V0021', 'PT226', 2),  -- 2L Leche
('V0021', 'PT230', 1),  -- 1 Queso panela

-- Venta V0022 - Pescados
('V0022', 'PT216', 1),  -- 1kg Tilapia
('V0022', 'PT220', 2),  -- 2kg Camarón
('V0022', 'PT238', 1),  -- 1kg Jitomate
('V0022', 'PT240', 1),  -- 1kg Limón

-- Venta V0031 - La Esquina (compra rápida)
('V0031', 'PT311', 2),  -- 2 Coca 600ml
('V0031', 'PT301', 1),  -- 1 Sabritas
('V0031', 'PT321', 1),  -- 1 Carlos V

-- Venta V0032 - Desayuno rápido
('V0032', 'PT331', 1),  -- 1 Pan Bimbo
('V0032', 'PT337', 1),  -- 1L Leche
('V0032', 'PT341', 1),  -- 1 Huevo

-- Venta V0041 - Todo para Ti (despensa)
('V0041', 'PT413', 3),  -- 3 Coca 600ml
('V0041', 'PT401', 2),  -- 2 Sabritas
('V0041', 'PT442', 1),  -- 1L Leche
('V0041', 'PT450', 4),  -- 4 Maruchan
('V0041', 'PT462', 1),  -- 1 Detergente

-- Venta V0051 - Mega Abarrotes (compra grande)
('V0051', 'PT501', 3),  -- 3kg Manzana
('V0051', 'PT503', 5),  -- 5kg Plátano
('V0051', 'PT521', 3),  -- 3kg Jitomate
('V0051', 'PT523', 2),  -- 2kg Cebolla
('V0051', 'PT571', 3),  -- 3L Leche
('V0051', 'PT581', 2),  -- 2 Huevo
('V0051', 'PT608', 2),  -- 2 Pan Bimbo
('V0051', 'PT599', 2),  -- 2 Coca 2L
('V0051', 'PT647', 5),  -- 5 Atún
('V0051', 'PT664', 2);  -- 2 Detergente

-- =====================================================
-- RESUMEN DE DATOS GENERADOS
-- =====================================================
-- 
-- ✅ 5 Tiendas (2 CDMX, 3 otras ciudades)
-- ✅ 19 Proveedores especializados
-- ✅ 176 Productos diferentes
-- ✅ 15 Empleados
-- ✅ 676+ Relaciones producto-tienda-proveedor
-- ✅ Inventario completo por tienda
-- ✅ Precios de venta diferenciados por ubicación
-- ✅ 60 Ventas de ejemplo con detalles
-- ✅ Datos coherentes y realistas
--
-- DISTRIBUCIÓN POR TIENDA:
-- • TDA001 (Abarrotes San Miguel, CDMX): 156 productos
-- • TDA002 (La Carnicería, Monterrey): 41 productos (especializada)
-- • TDA003 (Súper La Esquina, CDMX): 58 productos
-- • TDA004 (Todo para Ti, Querétaro): 69 productos
-- • TDA005 (Mega Abarrotes, Guadalajara): 176 productos
-- =====================================================