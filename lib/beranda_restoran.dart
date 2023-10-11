import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:shimmer/shimmer.dart';
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
        title: const Text('Beranda'),
        backgroundColor: Colors.brown.shade900,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Image.asset(
              'images/angkringan.png',
              width: 125,
              height: 125,
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                WidgetSpan(
                  child: AnimatedTextEffect(
                    text: 'ANGKRINGAN LEZAT  ',
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    delay: Duration(milliseconds: 2000),
                  ),
                ),
                TextSpan(
                  text: '😎',
                  style: TextStyle(
                    fontFamily: 'roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.brown.shade100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                'Selamat datang di Angkringan Lezat. Angkringan berasal dari bahasa Jawa angkring yaitu sebuah gerobak dorong untuk menjual berbagai macam makanan dan minuman di pinggir jalan dan biasanya menjadi korban ngebon pelanggannya. Di Solo  angkringan dikenal sebagai warung HIK (Hidangan Istimewa Kampung) atau wedangan. Disini dilarang ngebon, siap terima cash & QRIS.',
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
                    imageUrl4:
                        'https://betv.disway.id/upload/6eeb82df7f4dfb9b556968cb4e36c254.jpg',
                    imageUrl5:
                        'https://statik.tempo.co/data/2022/12/23/id_1167974/1167974_720.jpg',
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                _showSuccessDialog(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade900,
              ),
              child: Text('Bayar Sekarang'),
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

class AnimatedTextEffect extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final Duration delay;

  const AnimatedTextEffect({
    Key? key,
    required this.text,
    required this.textStyle,
    required this.delay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Animate(
      delay: delay,
      child: Shimmer.fromColors(
        baseColor: Colors.black,
        highlightColor: Color.fromARGB(255, 247, 129, 26),
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
