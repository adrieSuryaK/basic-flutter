import 'package:flutter/material.dart';
import 'beranda_restoran.dart';

class HalamanLogin extends StatefulWidget {
  const HalamanLogin({Key? key}) : super(key: key);

  @override
  _HalamanLoginState createState() => _HalamanLoginState();
}

class _HalamanLoginState extends State<HalamanLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Angkringan'),
        backgroundColor: Colors.brown.shade900,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(color: Colors.brown.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown.shade900),
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  labelStyle: TextStyle(color: Colors.brown.shade900),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.brown.shade900),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 50.0),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    if (emailController.text == 'admin@angkringan.com' &&
                        passwordController.text == 'secret') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BerandaRestoran(
                            imageUrl3:
                                'https://64.media.tumblr.com/avatar_1702307b08b0_128.pnj',
                          ),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Gagal Login'),
                        backgroundColor: Colors.brown.shade900,
                      ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown.shade900,
                  ),
                  child: Text('Login'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
