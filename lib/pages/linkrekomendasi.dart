class Aplikasi {
  int id;
  String? nama;
  String? url;
  String? gambar;
  bool? favorite;

  Aplikasi({
    required this.id,
    required this.nama,
    required this.url,
    required this.gambar,
    this.favorite = false,
  });
}

var AplikasiList = [
  Aplikasi(
    id: 1,
    nama: "Mobile Legends",
    url: "https://play.google.com/store/apps/details?id=com.mobile.legends",
    gambar:
        "https://i.pinimg.com/564x/6e/5c/a5/6e5ca5f91831fe4ea4cf09876e64e470.jpg",
    favorite: false,
  ),
  Aplikasi(
    id: 2,
    nama: "Zona Cacing.io",
    url:
        "https://play.google.com/store/apps/details?id=com.wildspike.wormszone",
    gambar:
        "https://i.pinimg.com/564x/d8/d2/05/d8d205ed73b232d9f1a613b5fa52bb9e.jpg",
    favorite: false,
  ),
  Aplikasi(
    id: 3,
    nama: "PUBG Mobile",
    url: "https://play.google.com/store/apps/details?id=com.tencent.ig&hl=en",
    gambar:
        "https://i.pinimg.com/564x/d6/18/7c/d6187c30dce68db3f9971f2053f12d4e.jpg",
    favorite: false,
  ),
  Aplikasi(
    id: 4,
    nama: "Hay Day",
    url: "https://play.google.com/store/search?q=hay+day&c=apps&hl=en",
    gambar:
        "https://i.pinimg.com/564x/4d/5d/45/4d5d45a94eed598e9ffdc3f20df8ceeb.jpg",
    favorite: false,
  ),
  Aplikasi(
    id: 5,
    nama: "Garden Scapes",
    url: "https://play.google.com/store/search?q=gardenscapes&c=apps&hl=en",
    gambar:
        "https://i.pinimg.com/564x/be/e8/a3/bee8a3e879c4c5772bd22024f35ff67c.jpg",
    favorite: false,
  ),
  Aplikasi(
    id: 6,
    nama: "Ludo King",
    url: "https://play.google.com/store/apps/details?id=com.ludo.king&hl=en",
    gambar:
        "https://i.pinimg.com/564x/70/ff/bb/70ffbb7b286b99b060d83c045ffc4ac7.jpg",
    favorite: false,
  ),
  Aplikasi(
    id: 7,
    nama: "Subway Surfaces",
    url:
        "https://play.google.com/store/apps/details?id=com.kiloo.subwaysurf&hl=en",
    gambar:
        "https://i.pinimg.com/736x/02/05/8e/02058ecf5bd66a094c61039da4cd6a95.jpg",
    favorite: false,
  ),
];
