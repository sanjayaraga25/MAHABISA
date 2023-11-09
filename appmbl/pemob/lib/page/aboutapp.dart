import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutApp extends StatelessWidget {
  _launchInstagram() async {
    const url = 'https://www.instagram.com/qalihh/'; // Ganti dengan URL akun Instagram Anda
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About This App"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Aplikasi ini merupakan aplikasi eksperimental vr. 1.0.0 yang dibuat oleh Sanjaya Raga",
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _launchInstagram();
                },
                child: Text("Visit Instagram @qalihh"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
