CREATE DATABASE IF NOT EXISTS library;

USE library;

CREATE TABLE books(

book_id integer UNSIGNED PRIMARY KEY AUTO_INCREMENT,
publisher_id integer  UNSIGNED NOT NULL,
title varchar(60) NOT NULL,
author varchar(60) NOT NULL,
publisher_id integer  UNSIGNED NOT NULL

);
CREATE TABLE publishers(
publisher_id integer UNSIGNED PRIMARY KEY,
name varchar(60) NOT NULL,
country varchar(60)
);

CREATE TABLE users(
user_id integer UNSIGNED PRIMARY KEY AUTO_INCREMENT,
name varchar(60) NOT NULL
email varchar(60) NOT NULL UNIQUE
);

CREATE TABLE actions(
action_id integer UNSIGNED PRIMARY KEY AUTO_INCREMENT,
book_id integer UNSIGNED NOT NULL,
user_id integer UNSIGNED NOT NULL,
action_type ENUM('venta','prestamo','devolucion') NOT NULL,
created_at timestamp NOT null default current_timestamp
);