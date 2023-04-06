import 'package:get/get.dart';
import 'package:tugas4/navbar/navbar.dart';
import 'package:tugas4/pages/guide.dart';
import 'package:tugas4/pages/landingpage.dart';
import 'package:tugas4/pages/login.dart';

class AppPage {
  static List<GetPage> routes = [
    GetPage(name: login, page: ()=>  LoginPage()),
    GetPage(name: navbar, page: ()=>  NavBar()),
    GetPage(name: navbar, page: ()=>  LandingPage()),
    GetPage(name: navbar, page: ()=>  GuidePage()),

  ];

  static getlogin() => login;
  static getnavbar() => navbar;
  static gethome() => home;
  static getguide() => guide;
  
  static String login = '/login';
  static String navbar = '/';
  static String home = '/home';
  static String guide = '/guide';
}
