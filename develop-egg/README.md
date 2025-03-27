Ditujukan untuk simulasi installer script egg pterodactyl

## Cara Menggunakannya
1. tulis script yang akan dijalankan pada file `install.sh`
2. ubah permission file `install.sh` menjadi executable dengan cara `chmod +x install.sh`
3. sesuaikan image docker yang akan digunakan pada file `docker-compose.yml`
4. jalankan perintah `docker-compose up -d` untuk memulai simulasi instalasi
5. pantau proses instalasi dengan melihat log container