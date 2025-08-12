import 'package:gemini_app/presentation/pages/basic_prompt/basic_prompt.page.dart';
import 'package:gemini_app/presentation/pages/home/home.page.dart';
import 'package:get/get.dart';

enum Routes {
  home        (url: HomePage.route ),
  basicPrompt (url: BasicPromptPage.route );

  const Routes({ 
    required String url 
  }) : _url = url;

  final String _url;
  String get url => _url;
}



class Navigation{

  static const String home = HomePage.route;
  
  static List<GetPage> getRoutes(){    
    List<GetPage> pages = [
      GetPage(name: HomePage.route, page:() => const HomePage()),
      GetPage(name: BasicPromptPage.route, page:() => const BasicPromptPage()),
    ];
    
    return pages;
  } 

  static goToPage({required Routes page}) => Get.toNamed( page.url );
}