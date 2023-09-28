import 'package:flutter/material.dart';

class ContohWidget extends StatelessWidget {
  const ContohWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contoh Widget'),
      ),
      body: ListView(
        children: [
          Text('contoh child'),
          Container(
            child: Image.network(
              'https://m.media-amazon.com/images/I/71d1G2ngoBL._AC_UF894,1000_QL80_.jpg',
              width: 200,
              height: 250,
            ),
          ),
          Center(
            child: Image.network(
              'https://m.media-amazon.com/images/I/81X5Wy1uMUL._AC_UF1000,1000_QL80_.jpg',
              width: 200,
              height: 250,
            ),
          ),
          SizedBox(
            width: 200,
            height: 250,
            child: Image.network(
                'https://m.media-amazon.com/images/I/71jzUu8leFL._AC_UF894,1000_QL80_.jpg'),
          ),
          Row(
            children: <Widget>[
              Icon(Icons.star),
              const Text('4.5'),
              const Text('123 ulasan')
            ],
          ),
          Column(
            children: <Widget>[
              const Text('Judul artikel'),
              const Text('Artikel panjang ...'),
              ElevatedButton(
                child: const Text('Baca selengkapnya'),
                onPressed: () {},
              )
            ],
          ),
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.network(
                'https://rukminim2.flixcart.com/image/850/1000/l2p23rk0/poster/2/l/t/small-horrific-poster-of-death-note-anime-poster-rf-16-original-imagdzfy2zvatfac.jpeg?q=90',
                width: 200,
                height: 250,
              ),
              Positioned(
                  top: -20,
                  right: 100,
                  child: Container(
                    child: Image.network(
                      'https://m.media-amazon.com/images/I/81pO1o2RmPL.jpg',
                      width: 50,
                      height: 60,
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
