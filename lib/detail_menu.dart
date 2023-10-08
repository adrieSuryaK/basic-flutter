import 'package:flutter/material.dart';
import 'beranda_restoran.dart';

class DetailMenuPage extends StatefulWidget {
  final String imageUrl;
  final String namaMenu;
  final String harga;

  DetailMenuPage({
    required this.imageUrl,
    required this.namaMenu,
    required this.harga,
  });

  @override
  _DetailMenuPageState createState() => _DetailMenuPageState();
}

class _DetailMenuPageState extends State<DetailMenuPage> {
  int jumlahPesanan = 1;

  void tambahPesanan() {
    setState(() {
      jumlahPesanan++;
    });
  }

  void kurangiPesanan() {
    if (jumlahPesanan > 1) {
      setState(() {
        jumlahPesanan--;
      });
    }
  }

  void pesanSekarang() {
    int totalHarga = jumlahPesanan *
        int.parse(widget.harga.replaceAll('Rp. ', '').replaceAll(',', ''));

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Berhasil Memesan!'),
          content: Text(
              'Njenengan telah memesan ${widget.namaMenu} sebanyak $jumlahPesanan. Total yang harus dibayar Rp. $totalHarga nggih.',
              textAlign: TextAlign.justify),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) =>
                        BerandaRestoran(imageUrl3: widget.imageUrl),
                  ),
                );
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
        backgroundColor: Colors.brown.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              widget.imageUrl,
              width: double.infinity, // Maksimal lebar
              height: MediaQuery.of(context).size.height / 2, // Setengah layar
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              widget.namaMenu,
              style: TextStyle(
                fontFamily: 'roboto',
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              widget.harga,
              style: TextStyle(
                fontSize: 16,
                color: Colors.brown.shade900,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: kurangiPesanan,
                ),
                Text(
                  jumlahPesanan.toString(),
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: tambahPesanan,
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: pesanSekarang,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade900,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              icon: Icon(Icons.shopping_cart),
              label: Text('Silahkan Pesan'),
            ),
          ],
        ),
      ),
    );
  }
}
