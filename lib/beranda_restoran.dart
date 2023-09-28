import 'package:flutter/material.dart';
import 'gambar_row.dart';

class BerandaRestoran extends StatelessWidget {
  final String imageUrl3;
  const BerandaRestoran({
    required this.imageUrl3,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade50,
      appBar: AppBar(
        title: const Text('Angkringan Solo'),
        backgroundColor: Colors.brown.shade900,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/angkringan.png',
              width: 250,
              height: 250,
            ),
          ),
          const Text(
            'SUGENG DAHAR SLUR',
            style: TextStyle(
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Angkringan (berasal dari bahasa Jawa angkring yang berarti alat dan tempat jualan makanan keliling yang pikulannya berbentuk melengkung ke atas) adalah sebuah gerobak dorong untuk menjual berbagai macam makanan dan minuman di pinggir jalan di Jawa Tengah, Daerah Istimewa Yogyakarta, dan Jawa Timur. Di Solo maupun Klaten angkringan dikenal sebagai warung HIK (Hidangan Istimewa Kampung, kadang juga disebut Hidangan Istimewa Klaten) atau wedangan.',
                textAlign: TextAlign.justify,
              )),
          const Text(
            'MENU ANDALAN',
            style: TextStyle(
              fontFamily: 'roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Stack(
            children: [
              Column(
                children: [
                  GambarRow(
                    imageUrl1:
                        'https://media-cdn.yummyadvisor.com/store/1731ce5e-ebf4-4367-887c-8f4347707de2.jpeg',
                    imageUrl2:
                        'https://i0.wp.com/i.gojekapi.com/darkroom/gofood-indonesia/v2/images/uploads/22739e1e-dd61-43d3-baa9-895508f6b59e_Go-Biz_20230129_181053.jpeg',
                    imageUrl3:
                        'https://64.media.tumblr.com/avatar_1702307b08b0_128.pnj',
                  ),
                ],
              ),
              if (imageUrl3 ==
                  'https://64.media.tumblr.com/avatar_1702307b08b0_128.pnj')
                Positioned(
                  top: 15,
                  right: 40,
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    padding: EdgeInsets.all(5),
                    child: Image.network(
                      'https://cdn.iconscout.com/icon/free/png-256/free-heart-love-like-favorite-romance-gift-16-28686.png',
                      width: 15,
                      height: 15,
                    ),
                  ),
                ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                _showSuccessDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade900,
              ),
              child: Text('Pesan Sekarang'),
            ),
          ),
        ],
      ),
    );
  }

  void _showSuccessDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Berhasil Memesan!'),
          content: Text('Terima kasih telah melakukan pemesanan.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'Tutup',
                style: TextStyle(
                  color: Colors.brown.shade900,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
