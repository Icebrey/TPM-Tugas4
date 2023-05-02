import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:tugas4/pages/linkrekomendasi.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: AplikasiList.where((element) => element.favorite == true)
              .toList()
              .length,
          itemBuilder: (context, index) {
            List list =
                AplikasiList.where((element) => element.favorite == true)
                    .toList();
            Aplikasi aplikasi = list[index];
            return Card(
              elevation: 10,
              child: ListTile(
                leading: ClipOval(
                  child: Image.network(
                    '${aplikasi.gambar}',
                    height: 50,
                    width: 50,
                    fit: BoxFit.fill,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(
                        Icons.watch,
                        size: 50,
                      );
                    },
                  ),
                ),
                title: Text(
                  '${aplikasi.nama}',
                  overflow: TextOverflow.visible,
                  maxLines: 1,
                ),
                subtitle: Text(
                  '${aplikasi.url}',
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
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          launchUrlString(aplikasi.url!);
                        },
                        child: const Text(
                          'Web',
                          style: TextStyle(fontSize: 14, color: Colors.green),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            list[index].favorite = false;
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content:
                                    Text('Berhasil menghapus dari favorite'),
                                backgroundColor: Colors.blue,
                                duration: Duration(
                                  seconds: 1,
                                ),
                              ),
                            );
                          });
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Menghapus dari favorites',
                          style: TextStyle(fontSize: 14, color: Colors.blue),
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
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  contentRow(String title, String content) {
    return Row(
      children: [
        Text(
          title,
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
