-- Table V1
CREATE TABLE test(
	id INT NOT NULL IDENTITY(1, 1),
	tipo_doc VARCHAR(10) NOT NULL,
	documento VARCHAR(15) NOT NULL,
	fecha_atencion DATE NOT NULL,
	tipo_atencion VARCHAR(100) NOT NULL,
	medico VARCHAR(100) NOT NULL,
	dx VARCHAR(10) NOT NULL,
	descripcion_dx VARCHAR(300) NOT NULL,
	lateralidad VARCHAR(10) NOT NULL,
	av VARCHAR(10) NOT NULL,
	tipo_av VARCHAR(10) NOT NULL,
	emc VARCHAR(10) NOT NULL,
	av_lb VARCHAR(10) NOT NULL,
	observaciones VARCHAR(500),
	eps VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);

-- Table V2
CREATE TABLE test_2(
	id INT NOT NULL IDENTITY(1, 1),
	tipo_doc VARCHAR(10) NOT NULL,
	documento VARCHAR(15) NOT NULL,
	anio VARCHAR(5) NOT NULL,
	mes VARCHAR(5) NOT NULL,
	tipo_atencion VARCHAR(100) NOT NULL,
	medico VARCHAR(100) NOT NULL,
	dx VARCHAR(10) NOT NULL,
	descripcion_dx VARCHAR(300) NOT NULL,
	lateralidad VARCHAR(10) NOT NULL,
	av VARCHAR(10) NOT NULL,
	tipo_av VARCHAR(10) NOT NULL,
	emc VARCHAR(10) NOT NULL,
	av_lb VARCHAR(10) NOT NULL,
	observaciones VARCHAR(500),
	eps VARCHAR(100) NOT NULL,
	PRIMARY KEY(id)
);