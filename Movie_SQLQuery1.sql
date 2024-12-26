
CREATE DATABASE Movie_DB

USE Movie_DB

CREATE SCHEMA Movies_SCH

CREATE TABLE Movies_SCH.Actor(
act_id int PRIMARY KEY,
act_fname varchar(20),
act_lname varchar(20),
act_gender varchar,
)

CREATE TABLE Movies_SCH.movie(
mov_id int PRIMARY KEY,
mov_title varchar(50),
mov_year int,
mov_time int,
mov_lang varchar(50),
mov_dt_rel date,
mov_rel_country varchar(5),
)

CREATE TABLE Movies_SCH.director(
dir_id int PRIMARY KEY,
dir_fname varchar(20),
dir_lname varchar(20),
)

CREATE TABLE Movies_SCH.reviewer(
rev_id int PRIMARY KEY,
rev_name varchar(30),
)

CREATE TABLE Movies_SCH.genres(
gen_id int PRIMARY KEY,
gen_title varchar(20),
)


CREATE TABLE Movies_SCH.movie_direction(
dir_id int,
mov_id int,
)

CREATE TABLE Movies_SCH.movie_cast(
act_id int ,
mov_id int,
role varchar(30),
)


CREATE TABLE Movies_SCH.movie_genres(
mov_id int,
gen_id int,
)

--
CREATE TABLE Movies_SCH.rating(
mov_id int,
rev_id int,
rev_stars int,
num_o_rating int,
)
