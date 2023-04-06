import 'package:flutter/material.dart';

class GuidePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panduan Pengguna'),
      ),
      body: Container(
      padding: EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        const SizedBox(height: 50),
          Text(
            'Daftar Anggota',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Anda dapat mengenal kami lebih dekat disini!',
            style: TextStyle(
              fontSize: 16,
              height: 1.4
            ),
          ),
        const SizedBox(height: 30),
          Text(
            'Stopwatch',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Tekan area pada lingkaran untuk memulai atau menjeda stopwatch. Dan tekan reset untuk menyetel ulang stopwatch',
            style: TextStyle(
              fontSize: 16,
              height: 1.4
            ),
          ),
        const SizedBox(height: 30),
          Text(
            'Situs Rekomendasi',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '',
            style: TextStyle(
              fontSize: 16,
              height: 1.4
            ),
          ),
        const SizedBox(height: 30),
          Text(
            'Favorite',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '',
            style: TextStyle(
              fontSize: 16,
              height: 1.4
            ),
          ),
        ],
      ),
    ),
    );
  }
}