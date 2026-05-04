-- membuat folder
create database if not exists produk_dqlab;


-- menyiapkan database
use produk_dqlab;

drop table produk;

-- membuat table
create table produk(
kode_produk varchar(10)primary key,
no_urut int,
kategori_produk varchar(50),
nama_produk varchar(100),
harga int);

-- memasukkan data produk
insert into produk(kode_produk, no_urut, kategori_produk, nama_produk,harga)values
('proud-01',1,'alat tulis kantor' , 'kotak pensildqlab',62500),
('proud-02', 2 ,'aksesoris komputer','flashdick dqlab 64 gb',55000),
('proud-03', 3 ,'gif & voucher',' gif voucher dqlab 100rb',100000),
('proud-04', 4 ,'aksesoris komputer', 'flashdick dqlab 32 gb',40000),
('proud-05', 5 ,'gif & voucher','gif voucher dqlab 250 rb',250000),
('proud-06', 6 ,'alat tulis kantor','pulpen multifanction + laser dqlab',92500),
('proud-07', 7, 'gif & voucher','tas travel orgnizerdigiskills.id',48000),
('proud-08', 8,'gif &voucher','gantungan kunci dqlab',15800),
('proud-09', 9 ,'alat tulis kantor','buku planner agenda dqlab', 92000),
('proud-10', 10 ,'alat tulis kantor','sticky notes dqlab 500 sheets',55000);



select * from produk;
