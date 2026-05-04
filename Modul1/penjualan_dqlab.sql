-- 1. membersihkan database yg sudah ada
DROP DATABASE IF EXISTS dqlab_db;
CREATE DATABASE dqlab_db;
USE dqlab_db;

-- 2. membuat tabelnya
CREATE TABLE tr_penjualan (
    kode_urut INT,
    kode_transaksi VARCHAR(10),
    kode_pelanggan VARCHAR(20),
    tgl_transaksi DATE,
    no_urut INT,
    kode_produk VARCHAR(10),
    nama_produk VARCHAR(50),
    qty INT,
    harga INT,
    diskon_persen DECIMAL(5,2)
);

-- 3. meMasukkan semua data sekaligus 
INSERT INTO tr_penjualan VALUES

(1, 'tr-001', 'dqlabcust07', '2020-05-01 0 :00' ,1 ,'proud-01', 'kotaknpensil' ,5 ,62500 ,0),
(2, 'tr-001', 'dqlabcust07', '2020-05-01 0 :00' ,2  ,'proud-03', 'flask disk'   ,1 ,100000 ,25),
(3, 'tr-001', 'dqlabcust07', '2020-05-01 0 :00' ,3 ,'proud-03','buku plan',3,92000,0),
(4, 'tr-001', 'dqlabcust07', '2020-05-01 0 :00' ,4  ,'proud-04','flasdick',3,40000,0),
(5, 'tr-002', 'dqlabcust00', '2020-05-01 0 :00' ,1  ,'proud-03','gifvouch',2,100000,0),
(6, 'tr-002','dqlabcust00', '2020-05-01 0 :00'  ,2  ,'proud-10','sticky not',4,5500,0),
(7, 'tr-002','dqlabcust00', '2020-05-01 0 :00'  ,3  ,'proud-07','tas travel',1,48000,0),
(8, 'tr-003', 'dqlabcuet03', '2020-05-03 0 :00' ,1  ,'proud-02','flasdick',2,55000,12.5),
(9, 'tr-004','dqlabcust03', '2020-05-03 0 :00'  ,1  ,'proud-10','stikynot',5,55000,0),
(10, 'tr-004','dqlabcust03', '2020-05-03 0:00'  ,2  ,'proaud-04','flasdick',4,40000,0),
(11, 'tr-005','dqlabcust00', '2020-06-12 0:00'  ,1  ,'proud-09','buku plan',3,92000,0),
(12, 'tr-005', 'dqlabcust00', '2020-06-12 0:00' ,2  ,'proud-01','kotak pensil',1,62500,5),
(13, 'tr-005','dqlabcust00', '2020-06-12 0:00'  ,3  ,'proud-04','flasdick',2,4000,0),
(14, 'tr-006','dqlabcust02','2020-06-19 0:00'   ,1 ,'proud-05','gift vouch',4,25000,0),
(15, 'tr-006','dqlabcust02','2020-06-19 0:00'   ,2 ,'proud-08','gantngan kunci',2,15800,0);


-- 4. meLihat hasilnya
SELECT * FROM tr_penjualan;