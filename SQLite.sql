CREATE TABLE Poliklinik (
    kode_poli VARCHAR(10) PRIMARY KEY,
    nama_poli VARCHAR(50)
);

CREATE TABLE Dokter (
    id_dokter VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(50),
    sp VARCHAR(50),
    no_telp VARCHAR(15),
    kode_poli VARCHAR(10),
    FOREIGN KEY (kode_poli) REFERENCES Poliklinik(kode_poli)
);

CREATE TABLE Pasien (
    NIK VARCHAR(20) PRIMARY KEY,
    nama VARCHAR(50),
    alamat TEXT,
    tgl_lahir DATE
);

CREATE TABLE Pendaftaran (
    no_antrian INT PRIMARY KEY,
    tgl DATE,
    NIK VARCHAR(20),
    kode_poli VARCHAR(10),
    FOREIGN KEY (NIK) REFERENCES Pasien(NIK),
    FOREIGN KEY (kode_poli) REFERENCES Poliklinik(kode_poli)
);

CREATE TABLE Obat (
    kode_obat VARCHAR(10) PRIMARY KEY,
    nama_obat VARCHAR(50),
    harga INT
);

CREATE TABLE Rekam_Medis (
    no_rm VARCHAR(10) PRIMARY KEY,
    NIK VARCHAR(20),
    kode_obat VARCHAR(10),
    FOREIGN KEY (NIK) REFERENCES Pasien(NIK),
    FOREIGN KEY (kode_obat) REFERENCES Obat(kode_obat)
);