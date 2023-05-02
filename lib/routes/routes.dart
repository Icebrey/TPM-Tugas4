import 'package:get/get.dart';
import 'package:tugas4/navbar/navbar.dart';
import 'package:tugas4/pages/guide.dart';
import 'package:tugas4/pages/landingpage.dart';
import 'package:tugas4/pages/login.dart';
import 'package:tugas4/pages/rekomendasi.dart';
import 'package:tugas4/pages/favorite_page.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: login, page: () => LoginPage()),
    GetPage(name: navbar, page: () => NavBar()),
    GetPage(name: navbar, page: () => LandingPage()),
    GetPage(name: navbar, page: () => GuidePage()),
    GetPage(name: navbar, page: () => Rekomendasi()),
    GetPage(name: navbar, page: () => FavoritePage())
  ];

  static getlogin() => login;
  static getnavbar() => navbar;
  static gethome() => home;
  static getguide() => guide;
  static getrekomendasi() => rekomendasi;
  static getfavoritepage() => favoritpage;

  static String login = '/login';
  static String navbar = '/';
  static String home = '/home';
  static String guide = '/guide';
  static String rekomendasi = '/rekomendasi';
  static String favoritpage = 'favoritepage';
}
