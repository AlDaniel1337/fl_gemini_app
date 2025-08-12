import 'package:flutter/material.dart';

class BasicPromptPage extends StatelessWidget {

  static const String route = "/BasicPromptPage";
   
  const BasicPromptPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      appBar: AppBar(
         title: const Text('BasicPromptPage'),
         centerTitle: true,
      ),
   
      body: const Center(
         child: Text('BasicPromptPage'),
      ),
    );
  }
}