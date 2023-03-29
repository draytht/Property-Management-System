-- create database pms;
use pms;

create table property (
property_id int auto_increment not null,
property_name varchar(255) not null,
property_address varchar(255) not null,
property_type varchar(255) not null,
primary key (property_id)
);

create table property_manager (
employee_id int auto_increment not null,
f_name varchar(255) not null,
l_name varchar(255) not null,
email varchar(255) not null,
property_id int not null,
phone_number varchar(255) not null,
primary key (employee_id),
foreign key (property_id) references property(property_id)
);

create table tenant (
tenant_id int auto_increment not null,
f_name varchar(255) not null,
l_name varchar(255) not null,
email varchar(255) not null,
phone_number varchar(255) not null,
primary key (tenant_id)
);

create table lease (
lease_id int auto_increment not null,
property_id int not null,
tenant_id int not null,
lease_start_date date not null,
lease_end_date date not null,
primary key (lease_id),
foreign key (property_id) references property(property_id),
foreign key (tenant_id) references tenant(tenant_id)
);

create table maintenance_request (
request_id int auto_increment not null,
property_id int not null,
tenant_id int not null,
technician_id int not null,
description text not null,
status enum('open', 'in progress', 'completed') not null,
primary key (request_id),
foreign key (property_id) references property(property_id),
foreign key (tenant_id) references tenant(tenant_id),
foreign key (technician_id) references technician(technician_id)
);

create table technician (
technician_id int auto_increment not null,
f_name varchar(255) not null,
l_name varchar(255) not null,
email varchar(255) not null,
phone_number varchar(255) not null,
primary key (technician_id)
);

create table payment (
payment_id int auto_increment not null,
lease_id int not null,
payment_date date not null,
rent_amount decimal(10,2) not null,
primary key (payment_id),
foreign key (lease_id) references lease(lease_id)
);