# ExamGuard Android

## Syarat (sekali saja)
1. Node.js 18+  2. JDK 17  3. Android Studio (untuk Android SDK) — set ANDROID_HOME.

## Build APK
- Mac/Linux: `./build.sh`
- Windows: `build.bat`
Hasil: `android/app/build/outputs/apk/debug/app-debug.apk` → kirim ke HP mahasiswa, izinkan "instal dari sumber tidak dikenal".

## Yang dikunci di Android
- Screenshot & screen recording diblokir (FLAG_SECURE).
- Bar sistem disembunyikan (mode imersif).
- Screen pinning: saat aplikasi dibuka, Android meminta konfirmasi "Sematkan layar"; setelah disetujui, Home/Recent/aplikasi lain terkunci.
  Keluar: tahan tombol Kembali + Recent (atau gestur setara). Untuk kunci tanpa konfirmasi, perangkat harus diatur sebagai kiosk (device owner).

## Penting
Data (ujian, sesi, nilai) masih tersimpan di dalam tiap HP (localStorage). Dosen, pengawas, dan mahasiswa di HP berbeda belum saling terhubung. Untuk ujian sungguhan perlu backend/database bersama.

## Tanpa install apa pun di komputer (via GitHub)
1. Buat akun GitHub, buat repositori baru, upload ISI folder ini (termasuk folder .github).
2. Buka tab Actions → "Build APK" → Run workflow (otomatis jalan juga setiap upload).
3. Setelah selesai (± 5–10 menit), buka run-nya → bagian Artifacts → unduh "examguard-apk".
