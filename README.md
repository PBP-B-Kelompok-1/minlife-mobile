# PBP B Kelompok 1

> Aplikasi ini terintegrasi dengan [aplikasi Django Minlife Community](https://github.com/PBP-B-Kelompok-1/minlife-community) sebagai back-end.

## Deskripsi Aplikasi
**Community platform untuk mempromosikan lifestyle minimalist, suatu lifestyle yang mendukung sustainable living.** Sekarang hadir di platform mobile!

Minimalist lifestyle adalah konsep hidup yang berfokus untuk menyederhanakan kepemilikan barang dan aktivitas sehari-hari agar hanya menyisakan hal-hal yang benar-benar esensial dan memberi nilai nyata. Ini berpusat seputar konsep memprioritaskan kualitas di atas kuantitas serta membuang segala bentuk kelebihan materi atau gangguan pikiran. Aplikasi kami bertujuan memberi insentif kepada para pengguna untuk mendalami lifestyle tersebut melalui kontak dengan komunitas yang luas. 

Bentuk aplikasi adalah _community platform_ yang berputar sekitar fitur posting yang fleksibel; setiap post dapat disusun dalam bentuk artikel, forum, atau bahkan listing barang yang ingin dijual/diberikan karena adanya fitur _tags_ sebagai alat kategorisasi. Aplikasi juga memiliki sistem-sistem interaktif seperti challenges. Secara personal, pengguna juga boleh membuat jurnal tentang perjalanan mengadopsi lifestyle minimalis. Tentu saja, ada moderasi pada platform ini; moderator dapat, misalnya, menghapus post dan membuat announcement.

Target pengguna adalah siapa saja yang berminat menghilangkan beban pikiran (declutter) dengan cara menempuh cara hidup yang baru.

## Anggota Kelompok
- Qisthan Albani Fasyah - 2506621434
- Enzo Susilo - 2506584382
- Jovan Finesta - 2506599144
- Husainah Syamsiah - 2506589036
- Clement Kevin Tanadi - 2506632892

---

## Tautan
#### PWS
https://clement-kevin-minlifecommunity.pws.cs.ui.ac.id 

#### Figma
**in progress!**

#### APK Download (Bitrise)
**in progress!**

---

## Daftar Modul

#### User (Husainah Syamsiah - 2506589036)
Setiap user akan disimpan di database dengan data seperti nama, link sosial media, dan poin yang terakumulasi. Fitur users dibutuhkan oleh modul-modul lainnya, seperti artikel dan weekly highlights.

Halaman profile akan memuat info-info publik user dan posting. Sebuah penanda tambahan muncul jika user tersebut adalah moderator.

#### Post (Jovan Finesta - 2506599144)
Posts menjadi halaman utama dari website ini.

Setiap pengguna dapat membuat post yang bebas diformat sebagai artikel, pertanyaan forum, maupun bentuk lainnya. Para pengguna dapat memberikan reply untuk memberikan tanggapan. Setiap post maupun reply dapat di-upvote maupun di-downvote. Upvote count diakumulasi di akun user.

Sebuah post juga dapat diberikan beberapa tag untuk mempermudah kategorisasi. Tag yang ada misalnya “question”, “article”, “poll”, dan “selling/giveaway”. Moderator dapat membuat tag kategori baru ketika diperlukan.

Setiap user dapat mengedit dan menghapus post atau komentar yang ia post. Moderator mempunyai permission menghapus semua post.

#### Announcement (Enzo Susilo - 2506584382)

Modul Announcements menyediakan pengumuman resmi komunitas melalui halaman list dan
detail publik. Pengguna dapat mencari berdasarkan judul atau isi serta mengurutkan data
berdasarkan waktu pembuatan terbaru atau terlama.

Moderator dengan Django permission yang sesuai dapat membuat, mengubah, dan menghapus
announcement. Read, search, sorting, detail, serta modal CRUD menggunakan HTMX agar
konten dapat diperbarui tanpa full-page reload, dengan halaman HTML biasa sebagai
fallback.

User yang login dapat mengaktifkan system notification Firebase Cloud Messaging pada
masing-masing browser. Setelah announcement berhasil disimpan, Django mengirim push ke
device yang sudah berlangganan, kecuali device milik creator. Klik notifikasi membuka
detail announcement terkait.

Dokumentasi teknis tersedia di
[`announcements/README.md`](announcements/README.md).

#### Personal goals (Qisthan Albani Fasyah - 2506621434)
Setiap user mendapatkan sebuah menu jurnal berisi kalender. Setiap tanggal pada kalender dapat ditekan untuk memunculkan modal berisi text editor untuk dituliskan status hari ini.

User dapat menuliskan goals, jurnal hari ini, atau apa pun yang cocok.

#### Weekly challenge (Clement Kevin Tanadi - 2506632892)
Moderator dapat membuat challenge mingguan yang berisi latar belakang masalah,
deskripsi, tujuan, tanggal mulai, dan maksimal tujuh tugas harian. Setiap
challenge memiliki satu Badge. Semua submission baru menggunakan satu tag sistem
bersama bernama `Weekly Challenge`; tag baru tidak dibuat untuk setiap challenge.

- Latar Belakang Masalah dapat berupa situasi yang tidak sesuai dengan cara pandang hidup minimalis. Contohnya, banyak barang yang berlebihan (misal kabel charger yang menjuntai di atas meja kerja sehingga mengganggu fokus saat bekerja).
- Deskripsi challenge merupakan deskripsi mengenai apa yang harus dilakukan user untuk dapat menyelesaikan challenge, contohnya “singkirkan barang yang tak bermanfaat di meja kerja kamu”.
- Tujuan/ekspektasi untuk menjelaskan impact apa yang dapat terjadi jika kita menyelesaikan challenge.

Pengguna mengikuti challenge aktif melalui formulir Post biasa dengan mengunggah
foto bukti dan menulis penjelasan. Setelah Post disimpan dengan tag
`Weekly Challenge`, signal Django secara otomatis mencatatnya sebagai submission
untuk challenge yang sedang aktif. Setiap pengguna hanya dapat memiliki satu
submission per challenge. Submission ditampilkan pada leaderboard berdasarkan
skor bersih, yaitu upvote dikurangi downvote. Badge diberikan ketika skor
mencapai threshold challenge dan tidak dicabut setelah skor turun atau Post
dihapus.

Direktori challenge menyediakan filter status, pencarian judul, pagination, dan
halaman detail. Moderator dengan permission yang sesuai dapat membuat, mengubah,
dan menghapus challenge. Penghapusan challenge menghapus submission terkait,
tetapi mempertahankan Badge dan riwayat UserBadge yang sudah diperoleh.

Halaman direktori, leaderboard, form create/edit, task-row, dan konfirmasi delete
mendukung HTMX 2.0.4 dengan fallback penuh ke request HTML biasa. Dokumentasi
teknis dan penjelasan implementasi tersedia di
[`weeklychallenge/README.md`](weeklychallenge/README.md).

## Peran user
User terbagi menjadi dua kategori:

#### User biasa
User dapat mendaftarkan akunnya dan berpartisipasi dalam komunitas melalui berbagai cara:

- Membuat post
- Memberikan komentar
- Memberikan upvote atau downvote untuk post atau komentar
- Melakukan submission weekly challenge

#### Moderator
Moderator adalah user yang dipercayai untuk mengatur komunitas, seperti menghapus post dan komentar yang ofensif dan membuat topik weekly challenge. Moderator dapat berpartisipasi dalam komunitas seperti user lain.

## Integrasi dengan Website Django
Memanfaatkan PWS sebagai hosting platform, [website Django](https://clement-kevin-minlifecommunity.pws.cs.ui.ac.id) akan digunakan sebagai backend dari aplikasi ini. Penampilan dan upload konten akan dilakukan melalui Django REST Framework yang diimplementasikan di website Django tersebut. Database yang digunakan sama, sehingga data yang muncul di kedua platform tersinkronisasi. Para pengguna akan mendapatkan pengalaman yang _seamless_ setiap bertransisi dari desktop ke aplikasi mobile.
