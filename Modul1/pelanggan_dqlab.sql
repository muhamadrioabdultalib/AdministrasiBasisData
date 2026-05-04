-- menampilkan database
show databases;

drop table pelanggan;

-- menggunakan database yg dibuat
use db_mart;

-- mengecek table
show tables;

-- membuat table
create table pelanggan(
kode_pelanggan varchar(50)primary key,
no_urut int,
nama_pelanggan varchar(100),
alamat varchar(255)
);

insert into pelanggan(kode_pelanggan,no_urut,nama_pelanggan,alamat)values
('dqlabcust00',0,'pelanggan non member','null'),
('dqlabcust01', 1,'eva noviana','villa sempilan,no.67-kota b'),
('dqlabcust02', 2,'heidi goh','villa sempilan,no.11 kota b'),
('dqlabcust03', 3,'unang handoko','villa sempilan,no.1 kota b'),
('dqlabcus04',  4,'jokolono sukarman','villa permata intan berkilau,blok c5-7'),
('dqlabcus05', 5,'tommy sinaga','villa permata intan berkilau,blok a1/2'),
('dqlabcus06', 6 ,'irwan setianto','villa gunung seribu,blok 01-no.1kota c'),
('dqlabcus07', 7,'agus cahyono','villa gunung seribu,blok f4-no.8'),
('dqlabcus08', 8,'mariasirait','vila bukit sagitarius,gang.sawit no.3'),
('dqlabcus09', 9,'ir.ita nugraha','vila bukit sagitarus,gang kelapa no.6'),
('dqlabcus10', 10,'djoko waardoyo,drs.','vila bukit segitarius,blok a1 no.1');

select * from pelanggan order by no_urut asc;