import 'package:gemini_app/presentation/pages/home/home.page.dart';
import 'package:get/get.dart';

class Routes{

  static const String home = HomePage.route;
  
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route, page:() => const HomePage()),
    ];
    
    return pages;
  } 
}