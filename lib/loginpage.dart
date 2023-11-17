import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/firstpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: InkWell(
            onTap: () {
              Get.to(const LogInPage());
            },
            child: const Center(child: Text("data"))),
      ),
    );
  }
}
