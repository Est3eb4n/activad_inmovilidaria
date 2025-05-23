create database if not exists Inmmoviliary;

use Inmmoviliary;

create table if not exists document(
    id int primary key auto_increment,
    code varchar(8) not null,
    type_document varchar(250),
    number_document varchar(250)
);

create table if not exists place(
    id int primary key auto_increment,
    code varchar(4) not null,
    city varchar(250) not null,
    country varchar(250) not null,
    addres varchar(250) not null,
    zip_code int(8) not null
);

create table if not exists paymethod(
    id int primary key auto_increment,
    code varchar(4),
    name varchar(250),
    active boolean default true
);

create table if not exists categories(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
    active boolean default true
);

create table if not exists type_vivienda(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
);

create table if not exists type_dwelling(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
);

create table if not exists type_contract(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
);

create table if not exists status_dwelling(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
);

create table if not exists cliente_nature(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
);

create table if not exists cliente_juridic(
    id int primary key auto_increment,
    code varchar(250) not null,
    nombre_compania varchar (250),
    representante_legal_nombre varchar (250),
    representante_legal_tipo_doc varchar (250),
    representante_legal_num_doc varchar (250),
    representante_legal_email varchar (250),
    representante_legal_telefono varchar (250)
);

create table if not exists type_status(
    id int primary key auto_increment,
    code varchar(250) not null,
    name varchar(250) not null,
);

create table if not exists paymethod(
    id int primary key auto_increment,
    code varchar(4),
    name varchar(250),
    active boolean default true
);

------------------------------------------------------------------------------------
create table if not exists user(
    id int primary key auto_increment,
    code varchar(4) not null,
    name varchar(250) not null,
    email varchar(250),
    password varchar(250),
    document_id int(10) not null,
    foreign key (document_id) references document(id),
    phone_number int not null,
    place_id int not null,
    foreign key (place_id) references place(id),
    user_type varchar(250) not null,
    active boolean default true
);

create table if not exists vivienda(
    id int primary key auto_increment,
    vivienda_id int not null,
    foreign key (vivienda_id) references type_vivienda(id), 
    direccion varchar(250),
    barrio varchar(250),
    localidad varchar(250),
    ciudad varchar(250),
    m2_construido varchar(250),
    m2_privado varchar(250),
    num_habitaciones varchar(250),
    num_cocinas varchar(250),
    tiene_patio boolean default true,
    num_matricula_inmobiliaria varchar(250),
    tipo_uso_id int not null,
    foreign key (tipo_uso_id) references type_dwelling(id),
    status_id int not null,
    foreign key (status_id) references status_dwelling(id),
);

create table if not exists client(
    id int primary key auto_increment,
    nat_cliente_id int not null
    foreign key (nat_cliente_id) references cliente_nature(id),
    jur_cliente_id int not null
    foreign key (jur_cliente_id) references cliente_juridic(id),
    documento varchar(250),
    document_id int(10) not null,
    foreign key (document_id) references document(id),
    nombre_razon_social varchar(250),
    direccion varchar(350),
    barrio varchar(250),
    localidad varchar(250),
    telefono varchar(250),
    email varchar(250),
    fecha_registro varchar(250)
);

create table if not exists contracts(
    id int primary key auto_increment,
    id_vivenda int not null
    foreign key (id_vivenda) references vivienda(id),
    id_cliente int not null
    foreign key (id_cliente) references client(id),
    id_contrac int not null
    foreign key (id_contrac) references type_contract(id),
    canon_arrendamiento varchar(250),
    fecha_inicio varchar(250),
    fecha_fin varchar(250),
    num_poliza varchar(250),
    comision_agente (porcentaje) varchar(250),
    id_status int not null
    foreign key (id_status) references type_status(id),
    certificado_ingresos (ruta archivo) varchar(250),
    certificado_laboral (ruta archivo) varchar(250),
    adiciones_admin (texto) varchar(250)
);

create table if not exists payments(
    id int primary key auto_increment,
    id_contrac int not null
    foreign key (id_contrac) references contracts(id),
    fecha_pago datetime not null default current_timestamp,
    valor int,
    type_pay int not null,
    foreign key (type_pay) references paymethod(id),
    periodo_pagado varchar
    id_status int not null
    foreign key (id_status) references type_status(id),
    fecha_corte datetime not null default current_timestamp
);

