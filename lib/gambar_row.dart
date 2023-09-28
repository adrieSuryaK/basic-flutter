import 'package:flutter/material.dart';

class GambarRow extends StatelessWidget {
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;

  const GambarRow({
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildColumn('Sego Bandeng', 'Rp. 2000', imageUrl1),
          _buildColumn('Es Sirup', 'Rp. 3000', imageUrl2),
          _buildColumn('Gorengan', 'Rp. 1000', imageUrl3),
        ],
      ),
    );
  }

  Widget _buildColumn(String title, String subtitle, String imageUrl) {
    return Column(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 5),
        Text(title),
        Text(
          subtitle,
          style: TextStyle(fontSize: 10),
        ),
      ],
    );
  }
}
