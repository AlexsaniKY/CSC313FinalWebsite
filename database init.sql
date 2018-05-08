create database if not exists csc313finaldb;

create table if not exists Equipment (
id Int(10) primary key auto_increment,
name varchar(32),
manufacturer varchar(32),
equipment_type varchar(32),
battery_type varchar(32),
weight decimal(10,2)
);

insert into Equipment 
(name, manufacturer, equipment_type, battery_type, weight) 
values 
('Alpha a6100', 'Sony', 'camera', 'NP-FW50', 12.13),
('Lumix DC-GH5S', 'Panasonic', 'camera', 'DMW-BLF19', 50.4),
('Alpha a7R III', 'Sony', 'camera', 'NP-FZ100', 23.2),
('Lumix DC-G9', 'Panasonic', 'camera', 'DMW-BLF19', 20.32),
('EOS 5D Mark IV', 'Canon', 'camera', 'LP-E6N', 28.16),

('H6', 'Zoom', 'microphone', 'AA', 9.9),
('DR-10L', 'Tascam', 'microphone', 'AAA', 2.2),
('DR-40', 'Tascam', 'microphone', 'AA', 7.5),
('H4n Pro', 'Zoom', 'microphone', 'AA', 10),
('LS-P1', 'Olympus', 'microphone', 'AAA', 2.6),

('Speedlite 600EX II-RT', 'Canon', 'light', 'AA', 15),
('Viola 5" On-Camera RGB LED Light', 'Luxli', 'light', 'DC', 1),
('LED-7100T 312 LED', 'Genaray', 'light', 'DC', 12.16),
('LED-330X', 'Vidpro', 'light', 'DC', 14.2)
;

select * from Equipment order by equipment_type, manufacturer, name;

select * from Equipment where name like "%%" and manufacturer like "%%" and equipment_type like "%%" and battery_type like "%%";