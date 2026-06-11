<?php

// Mendefinisikan abstract class bernama Tiket
abstract class Tiket {
    
    // Properti Terenkapsulasi (protected) - Hanya bisa diakses oleh class ini dan class anaknya
    // Nama variabel disesuaikan dengan nama kolom di tabel_tiket phpMyAdmin
    protected int $id_tiket;
    protected string $nama_film;
    protected string $jadwal_tayang; 
    protected int $jumlah_kursi;
    protected float $harga_dasar_tiket;

    // Constructor untuk memetakan (mapping) data dari database ke dalam properti objek
    public function __construct(int $id_tiket, string $nama_film, string $jadwal_tayang, int $jumlah_kursi, float $harga_dasar_tiket) {
        $this->id_tiket = $id_tiket;
        $this->nama_film = $nama_film;
        $this->jadwal_tayang = $jadwal_tayang;
        $this->jumlah_kursi = $jumlah_kursi;
        $this->harga_dasar_tiket = $harga_dasar_tiket;
    }

    // =========================================================================
    // METODE ABSTRAK (Wajib dibuat ulang/override di class anak)
    // =========================================================================
    
    // Setiap studio punya cara hitung total harga yang berbeda (misal ada tambahan biaya fasilitas)
    abstract public function hitungTotalHarga(): float;

    // Setiap studio punya fasilitas unik (misal Velvet dapet bantal, IMAX dapet kacamata 3D)
    abstract public function tampilkanInfoFasilitas(): void;

    // =========================================================================
    // GETTER METHODS (Untuk mengambil data dari luar class jika diperlukan)
    // =========================================================================
    
    public function getIdTiket(): int { return $this->id_tiket; }
    public function getNamaFilm(): string { return $this->nama_film; }
    public function getJadwalTayang(): string { return $this->jadwal_tayang; }
    public function getJumlahKursi(): int { return $this->jumlah_kursi; }
    public function getHargaDasarTiket(): float { return $this->harga_dasar_tiket; }
}