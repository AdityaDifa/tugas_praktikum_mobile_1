import 'package:flutter/material.dart';
import 'package:http_sharedpreference/pages/halaman_profile.dart';
import 'package:http_sharedpreference/pages/halaman_utama.dart';

class HalamanHome extends StatelessWidget {
  const HalamanHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Halaman Home"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HalamanProfile()));
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HalamanUtama()));
              },
              icon: Icon(Icons.logout)),
        ],
      ),
      body: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Tambahkan aksi yang diinginkan ketika gambar ditekan di sini
              print('Gambar ke-$index ditekan');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://picsum.photos/200",
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
