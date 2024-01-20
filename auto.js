// Fungsi untuk memeriksa apakah tindakan sudah dilakukan
function cekTindakanDilakukan() {
  // Cek apakah ada suatu penanda (misalnya, cookie) yang menunjukkan tindakan sudah dilakukan
  // Jika penanda ada, return true
  // Jika tidak, return false
  return document.cookie.includes("tindakan_dilakukan=true");
}

// Fungsi untuk menandai bahwa tindakan sudah dilakukan
function tandaiTindakanDilakukan() {
  // Set cookie (atau gunakan metode lain) untuk menandai bahwa tindakan sudah dilakukan
  document.cookie = "tindakan_dilakukan=true; expires=Thu, 01 Jan 2099 00:00:00 UTC; path=/";
}

// Fungsi untuk pindah ke halaman lain jika tindakan belum dilakukan
function pindahHalaman() {
  if (!cekTindakanDilakukan()) {
    // Pindah ke halaman lain
    window.location.href = "http://localhost/ocbt/jadwal";
    // Tandai bahwa tindakan sudah dilakukan
    tandaiTindakanDilakukan();
  }
}

// Panggil fungsi pindahHalaman saat halaman dimuat
window.onload = pindahHalaman;
