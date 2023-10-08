import 'package:flutter/material.dart';
import 'detail_menu.dart';

class GambarRow extends StatefulWidget {
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String imageUrl4;
  final String imageUrl5;

  GambarRow({
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.imageUrl4,
    required this.imageUrl5,
  });

  @override
  _GambarRowState createState() => _GambarRowState();
}

class _GambarRowState extends State<GambarRow> {
  bool statusMenuFavorit1 = false;
  bool statusMenuFavorit2 = false;
  bool statusMenuFavorit3 = false;
  bool statusMenuFavorit4 = false;
  bool statusMenuFavorit5 = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildMenuCard(
                  context,
                  'Sego Endog',
                  'Rp. 6000',
                  widget.imageUrl1,
                  statusMenuFavorit1,
                  () {
                    setState(() {
                      statusMenuFavorit1 = !statusMenuFavorit1;
                    });
                  },
                ),
                _buildMenuCard(
                  context,
                  'Es Sirup',
                  'Rp. 3000',
                  widget.imageUrl2,
                  statusMenuFavorit2,
                  () {
                    setState(() {
                      statusMenuFavorit2 = !statusMenuFavorit2;
                    });
                  },
                ),
                _buildMenuCard(
                  context,
                  'Tahu Isi',
                  'Rp. 1000',
                  widget.imageUrl3,
                  statusMenuFavorit3,
                  () {
                    setState(() {
                      statusMenuFavorit3 = !statusMenuFavorit3;
                    });
                  },
                ),
                _buildMenuCard(
                  context,
                  'Tempe',
                  'Rp. 1000',
                  widget.imageUrl4,
                  statusMenuFavorit4,
                  () {
                    setState(() {
                      statusMenuFavorit4 = !statusMenuFavorit4;
                    });
                  },
                ),
                _buildMenuCard(
                  context,
                  'Rokok Ngecer',
                  'Rp. 2000',
                  widget.imageUrl5,
                  statusMenuFavorit5,
                  () {
                    setState(() {
                      statusMenuFavorit5 = !statusMenuFavorit5;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context,
    String namaMenu,
    String harga,
    String imageUrl,
    bool isFavorit,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => DetailMenuPage(
              imageUrl: imageUrl,
              namaMenu: namaMenu,
              harga: harga,
            ),
          ),
        );
      },
      child: Stack(
        alignment: Alignment.topRight,
        children: <Widget>[
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(namaMenu),
              Text(
                harga,
                style: TextStyle(fontSize: 10),
              ),
            ],
          ),
          Positioned(
            top: 20,
            right: 10,
            child: Container(
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: ClipOval(
                child: GestureDetector(
                  onTap: onTap,
                  child: Image.asset(
                    isFavorit ? 'images/love.png' : 'images/unlove.png',
                    width: 10,
                    height: 10,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
