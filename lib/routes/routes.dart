import 'package:get/get.dart';
import 'package:tugas4/navbar/navbar.dart';
import 'package:tugas4/pages/guide.dart';
import 'package:tugas4/pages/landingpage.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: navbar, page: ()=>  NavBar()),
    GetPage(name: navbar, page: ()=>  LandingPage()),
    GetPage(name: navbar, page: ()=>  GuidePage()),

  ];

  static getnavbar() => navbar;
  static gethome() => home;
  static getguide() => guide;

  static String navbar = '/';
  static String home = '/home';
  static String guide = '/guide';
}