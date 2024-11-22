import 'package:flutter/material.dart'; // Import Material Design widgets

void main() {
  runApp(const MyApp()); //Fungsi untuk menjalankan apk
}

class MyApp extends StatelessWidget {
  //Kelas utama yang bertugas untuk membuat halaman utama apk, StatelessWidget adalah widget yang tidak dapat diubah
  const MyApp(
      {super.key}); // Konstruktor kelas, super.key digunakan untuk mengakses kelas induk

  @override
  Widget build(BuildContext context) {
    //Fungsi utama untuk membangun tampilan halaman utama
    return MaterialApp(
      //MaterialApp itu seperti "rumah" untuk aplikasi Flutter
      debugShowCheckedModeBanner: false, //Menonaktifkan banner debug
      home: Scaffold(
        // Scaffold adalah struktur dasar halaman yang menyediakan AppBar, body, dan layout lainnya
        appBar: AppBar(
          //AppBar adalah bagian atas halaman yang menampilkan judul dan tombol navigasi
          title: const Text('Item Service Coffee'),
        ),
        body: ListView(
          //ListView adalah widget untuk membuat daftar menu yang dapat digeser atau di scroll
          padding: const EdgeInsets.all(
              16), //Padding untuk memberikan jarak antara konten di dalam kotak menu dengan dinding kotak itu sendiri.
          children: [
            //Children adalah widget yang berada di dalam kotak menu
            Container(
              // Container digunakan untuk membungkus elemen dan memberi gaya pada elemen tersebut
              padding: const EdgeInsets.fromLTRB(40, 30, 40, 60),
              decoration: BoxDecoration(
                color: Colors.brown[50],
                borderRadius: const BorderRadius.only(
                  //BorderRadius digunakan untuk memberikan sudut tepi pada kotak
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(180),
                  bottomRight: Radius.circular(180),
                ),
                boxShadow: const [
                  //BoxShadow digunakan untuk memberikan efek bayangan pada kotak
                  BoxShadow(
                    color: Colors.brown,
                    blurRadius:
                        6, //blurRadius digunakan untuk memberikan efek blur/kabur pada bayangan kotak
                    offset: Offset(1,
                        3), //offset digunakan untuk memberikan posisi bayangan pada kotak
                  ),
                ],
              ),
              child: Column(children: [
                ClipRRect(
                  // ClipRRect digunakan untuk memotong gambar dengan bentuk melengkung
                  borderRadius: BorderRadius.circular(
                      100), //circular digunakan untuk memberikan sudut melengkung pada gambar
                  child: Image.asset(
                    "assets/image/Coffee.jpg",
                    width: 100,
                    height: 100,
                    fit: BoxFit
                        .cover, //BoxFit.cover digunakan untuk memberikan efek melengkung pada gambar
                  ),
                ),
                const SizedBox(
                    height:
                        16), //SizedBox digunakan untuk memberikan jarak antara elemen dengan elemen sebelumnya
                Text('Caffè Latte',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown[900])),
                const SizedBox(height: 20),
                const Text(
                  'A caffè latte is simply a shot or two of bold, tasty espresso with fresh, sweet steamed milk over it.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
                const SizedBox(height: 30),
                TextButton(
                  onPressed: () {
                    print('Explore More');
                  },
                  style: ButtonStyle(padding: WidgetStateProperty.resolveWith(
                      //WidgetStateProperty.resolveWith digunakan untuk memberikan padding pada tombol
                      (Set<WidgetState> states) {
                    return const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 16);
                  }), backgroundColor: WidgetStateProperty.resolveWith(
                      //WidgetStateProperty.resolveWith digunakan untuk memberikan warna latar belakang pada tombol
                      (Set<WidgetState> states) {
                    return Colors.brown[700];
                  }), foregroundColor: WidgetStateProperty.resolveWith(
                      //WidgetStateProperty.resolveWith digunakan untuk memberikan warna teks pada tombol
                      (Set<WidgetState> states) {
                    return Colors.white;
                  }), shape: WidgetStateProperty.resolveWith(
                      //WidgetStateProperty.resolveWith digunakan untuk memberikan bentuk tombol
                      (Set<WidgetState> states) {
                    return RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    );
                  })),
                  child: const Text(
                      'Explore Now'), //Text digunakan untuk menampilkan teks pada tombol
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
