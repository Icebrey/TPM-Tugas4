import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas4/pages/linkrekomendasi.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Rekomendasi extends StatefulWidget {
  const Rekomendasi({Key? key}) : super(key: key);

  @override
  _Rekomendasi createState() => _Rekomendasi();
}

class _Rekomendasi extends State<Rekomendasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rekomendasi'),
      ),
      body: ListView.builder(
          itemCount: AplikasiList.length,
          itemBuilder: (context, index) {
            Aplikasi aplikasi = AplikasiList[index];
            return Card(
              elevation: 10,
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    '${aplikasi.gambar}',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                  ),
                ),
                title: Text(
                  '${aplikasi.nama}',
                  overflow: TextOverflow.visible,
                  maxLines: 1,
                ),
                onTap: () => showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text(
                            '${aplikasi.nama}',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Cancel',
                                style:
                                    TextStyle(fontSize: 10, color: Colors.red),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                launchUrlString(aplikasi.url!);
                              },
                              child: const Text(
                                'Web',
                                style: TextStyle(
                                    fontSize: 10, color: Colors.black),
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  if (AplikasiList[index].favorite == false) {
                                    AplikasiList[index].favorite = true;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Berhasil ditambahkan ke favorite'),
                                        backgroundColor: Colors.blue,
                                        duration: Duration(
                                          seconds: 1,
                                        ),
                                      ),
                                    );
                                  } else {
                                    AplikasiList[index].favorite = false;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text(
                                            'Berhasil Menghapus dari Favorit'),
                                        backgroundColor: Colors.grey,
                                        duration: Duration(seconds: 1),
                                      ),
                                    );
                                  }
                                });
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                aplikasi.favorite!
                                    ? 'Menghapus dari favorite'
                                    : 'Menambahkan ke favorite',
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.grey),
                              ),
                            ),
                          ],
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 300,
                                height: 300,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(aplikasi.gambar!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
              ),
            );
          }),
    );
  }

  contentRow(String tittle, String content) {
    return Row(
      children: [
        Text(
          tittle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        const SizedBox(width: 10),
        Text(
          content,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
