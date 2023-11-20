import 'package:flutter/material.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 65),
          child: Text(
            "Language",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
              hintText: "English",
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_downward))),
        ),
      ),
    );
  }
}
