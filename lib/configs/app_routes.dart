import 'package:fellow4u/pages/login_page.dart';
import 'package:fellow4u/pages/main_page.dart';
import 'package:fellow4u/pages/register_page.dart';
import 'package:fellow4u/pages/intro_screens/splash_page.dart';

class AppRoutes {
  static final pages = {
    '/': (context) => SplashPage(),
    '/login': (context) => LoginPage(),
    '/register': (context) => RegisterPage(),
    '/main': (context) => MainPage(),
  };
  static const login = '/login';
  static const register = '/register';
  static const splash = '/';
  static const main = '/main';
}
