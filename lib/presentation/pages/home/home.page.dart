import 'package:flutter/material.dart';
import 'package:gemini_app/config/navigation/routes.dart';

class HomePage extends StatelessWidget {

  static const String route = "/HomePage";
   
  const HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
   
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 243, 187, 192),
              child: Icon( Icons.person_outlined ),              
            ),
            title: const Text("Prompt básico a Gemini"),
            subtitle: const Text("Usando un modelo flash"),
            onTap: () => Navigation.goToPage( page: Routes.basicPrompt ),
          )
        ],
      )
    );
  }
}