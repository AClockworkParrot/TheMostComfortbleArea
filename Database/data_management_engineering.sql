create table district
(
	id int generated by default as identity ,
	name_district varchar(100) not null, 
	area int not null, 
	population int not null,
	primary key(id)
)

create table streets
(
	id int generated by default as identity,
	name_streets varchar(100) not null,
	number_cameras int,
	id_district int not null,
	index_street int not null,
	foreign key (id_district) references manager_departments (id),
	primary key(id)
)

create table teatry
(
	id int not null,
	name_teatry varchar(100) not null,
	type_teatry varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	id_streets int not null,
	index_home int not null,
	foreign key (id_streets) references streets (id)
)

create table parks
(
	id int not null,
	name_park varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	id_streets int not null,
	index_home int not null,
	foreign key (id_streets) references streets (id)
)

create table cinemas
(
	id int not null,
	name_cinema varchar(100) not null,
	type_cinema varchar(100) not null,
	website varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id),
	index_home int not null
)

create table sport_schools
(
	id int not null,
	name_shool varchar(100) not null,
	website varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	index_home int not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table sections
(
	id int generated by default as identity ,
	name_section varchar(100) not null,
	primary key(id)
)

create table sections_in_school
(
	id int generated by default as identity ,
	index_sport_school int not null,
	index_section int not null,
	foreign key (index_sport_school) references sport_schools (id),
	foreign key (index_section) references sections (id),
	primary key(id)
)


create table sports_facilities
(
	id int not null,
	name_sports_facilities varchar(100) not null,
	website varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	id_streets int not null,
	index_home int not null,
	foreign key (id_streets) references streets (id),
)

create table kindergartens
(
	id int not null,
	name_kindergarten varchar(100) not null,
	director varchar(100) not null,
	website varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	is_nursery_group bool not null,
	index_home int not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id),
)

create table metro_stations
(
	id int not null,
	name_station varchar(100) not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table parking_lots
(
	id int not null,
	name_parking_lot varchar(100) not null,
	type_parking_lot varchar(100) not null,
	area int not null,
	number_cars int not null,
	phone_number int not null,
	email varchar(100) not null,
	index_home int not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id),
	id_metro_station int not null,
	foreign key (id_metro_station) references metro_stations (id)
)

create table cultural_sites
(
	id int not null,
	name_cultural_site varchar(100) not null,
	author varchar(100) not null,
	type_object varchar(100) not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table cultural_leisures
(
	id int not null,
	name_cultural_leisure varchar(100) not null,
	director varchar(100) not null,
	type_object varchar(100) not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table polyclinics
(
	id int not null,
	name_polyclinic varchar(100) not null,
	type_treatment varchar(100) not null,
	director varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table museum
(
	id int not null,
	name_museum varchar(100) not null,
	type_museum varchar(100) not null,
	director varchar(100) not null,
	phone_number int not null,
	email varchar(100) not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table nature_area
(
	id int not null,
	full_area int not null,
	area_forest int not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table cameras
(
	id int not null,
	number_cameras int not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table stops
(
	id int not null,
	id_streets int not null,
	foreign key (id_streets) references streets (id)
)

create table transports
(
	id int not null,
	type_transport varchar(100) not null,
	id_stop_start int not null,
	foreign key (id_stop_sart) references stops (id),
	id_stop_finish int not null,
	foreign key (id_stop_finish) references stops (id)
)























