CREATE TABLE `Dokter` (
  `Id_dokter` int PRIMARY KEY,
  `Nama` varchar(255),
  `Sp` varchar(255),
  `no_tlpn` varchar(255),
  `Kode_polik` int
);

CREATE TABLE `Poliklinik` (
  `Kodo_polik` int PRIMARY KEY,
  `Nama_polik` varchar(255)
);

CREATE TABLE `Pasien` (
  `Nik` int PRIMARY KEY,
  `Nama` varchar(30),
  `Alamat` varchar(50),
  `BOD` datetime
);

CREATE TABLE `Daftar` (
  `No_Antrian` int PRIMARY KEY,
  `Tanggal` varchar(255),
  `Nik` int,
  `Kode_polik` int
);

CREATE TABLE `Rekam_medis` (
  `no_Rm` int PRIMARY KEY,
  `Nik` int,
  `Kode_polik` int
);

CREATE TABLE `Obat` (
  `Kode_obat` int PRIMARY KEY,
  `Nama_obat` varchar(255),
  `Harga` varchar(255)
);

ALTER TABLE `Dokter` ADD FOREIGN KEY (`Kode_polik`) REFERENCES `Poliklinik` (`Kodo_polik`);

ALTER TABLE `Daftar` ADD FOREIGN KEY (`Nik`) REFERENCES `Poliklinik` (`Kodo_polik`);

ALTER TABLE `Daftar` ADD FOREIGN KEY (`Kode_polik`) REFERENCES `Pasien` (`Nik`);

ALTER TABLE `Rekam_medis` ADD FOREIGN KEY (`Nik`) REFERENCES `Daftar` (`Nik`);

ALTER TABLE `Rekam_medis` ADD FOREIGN KEY (`Kode_polik`) REFERENCES `Obat` (`Kode_obat`);
