CREATE DATABASE IF NOT EXISTS apotek_cashflow CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE apotek_cashflow;
CREATE TABLE users(id INT AUTO_INCREMENT PRIMARY KEY,nama VARCHAR(100) NOT NULL,username VARCHAR(50) NOT NULL UNIQUE,password VARCHAR(255) NOT NULL,status TINYINT(1) DEFAULT 1);
CREATE TABLE kategori(id INT AUTO_INCREMENT PRIMARY KEY,nama VARCHAR(100) NOT NULL,jenis ENUM('pemasukan','pengeluaran') NOT NULL);
CREATE TABLE transaksi(id INT AUTO_INCREMENT PRIMARY KEY,tanggal DATE NOT NULL,jenis ENUM('pemasukan','pengeluaran') NOT NULL,kategori_id INT NOT NULL,nominal DECIMAL(15,2) NOT NULL,keterangan TEXT,user_id INT NOT NULL,created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,FOREIGN KEY(kategori_id) REFERENCES kategori(id),FOREIGN KEY(user_id) REFERENCES users(id));
INSERT INTO users(nama,username,password) VALUES('Administrator','admin','$2y$12$igOLbANuQw85tGq9GkinGeS9I5.AV5J4fhC8NsnwxUqvfReO3QuY2');
INSERT INTO kategori(nama,jenis) VALUES('Penjualan Obat','pemasukan'),('Jasa/Konsultasi','pemasukan'),('Pendapatan Lainnya','pemasukan'),('Pembelian Barang','pengeluaran'),('Listrik','pengeluaran'),('Gaji Karyawan','pengeluaran'),('Sewa Toko','pengeluaran'),('ATK','pengeluaran'),('Pengeluaran Lainnya','pengeluaran');
INSERT INTO transaksi(tanggal,jenis,kategori_id,nominal,keterangan,user_id) VALUES(CURDATE(),'pemasukan',1,500000,'Contoh penjualan hari ini',1),(CURDATE(),'pengeluaran',5,150000,'Contoh pembayaran listrik',1);
