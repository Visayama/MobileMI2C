import 'package:flutter/material.dart';

class NavigationTekkom extends StatelessWidget {
  const NavigationTekkom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Teknik Komputer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Deskripsi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                  color: Colors.orange
              ),
            ),
            SizedBox(height: 40),

            Text(
              'Program Studi Manajemen Informatika (Kampus Kab. Pelalawan) merupakan salah satu Program Studi Diluar Kampus Utama (PSDKU) Politeknik Negeri Padang'
                  'yang memiliki sejarah dan ketertarikan erat dengan berdirinya Akademi'
                  'Komunitas di Daerah Pelalawan.'
                  'Berangkat dari SK Pendirian Akademi Komunitas Nomor: 179/p/2013 Tanggal 26 September 2013, Program'
                  'Studi Diluar Domisili (PDD) '
                  'Kabupaten Pelalawan di awal berdirinya memiliki Program Studi D2 Elektro Industri dan D2 Manajemn Informatika',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            SizedBox(height: 100), // Spasi antara teks dan tombol
            MaterialButton(
              onPressed: () {
                //back ke page sebelumnya
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              color: Colors.orange,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class PageRow extends StatelessWidget {
  const PageRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Page Row'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.add_business_sharp),
            Icon(Icons.person),
            Icon(
              Icons.add_call,
              color: Colors.orange,
              size: 64,
            ),
          ],
        ),
      ),
    );
  }
}
