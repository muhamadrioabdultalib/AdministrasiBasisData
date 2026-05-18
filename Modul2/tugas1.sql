-- nama = lalu akbar huseyn
-- nim  = 24241065
-- kls  = B
-- modul = 2

-- gunakan datebase
use db_mart;

-- cek deskripsi table

-- statment select
-- mengambil satu kolom dalam tabel
select nama_produk from produk;
 
 -- mengambil data lebih dari satu kolom
 -- ambil data nama produk dan harga
 select nama_produk,harga from produk;
 
 -- mengambil semua kolom pada table
 select * from produk;
 
 -- prefik dan alias
 -- nama_produk =coloum,
 -- produk = table,
 -- db_mart = datebase,
 -- kolom ke table
 select produk,nama_produk from produk;
 -- kolom ketable ke datebase
 select db_mart,produk,nama_produk from produk;
 
 -- alias nama sementara dari objek datebase
 -- menggunakan kata kunci 'as'
 -- alias pada objek kolom (colum)
 select nama_produk as np from produk;
 
 -- alias pade objek table
 select nama_produk from produk as pr;
 
 -- alias pada objek table
 select pr,nama_produk from produk as pr;
 
 -- penggunaan prefix dan alias dalam satu query
 select pr.nama_produk from  produk as pr;
 
-- tugas mandiri
select kode_produk,nama_produk
from produk;

SELECT * FROM dqlab_db.tr_penjualan;





 -- case 1
 select nama_pelanggan,alamat
 from pelanggan;
 
 select p.nama_pelanggan, p.alamat from pelanggan as p;
 
 -- case 2
select nama_produk,harga
from produk_dqlab.produk;

select nama_produk as nama,
harga as harga_jual
from produk_dqlab.produk;
