import 'package:flutter/material.dart';

class PhoneAuth extends StatelessWidget {
  const PhoneAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
            "Login With Phone",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(
                width: 40,
                child: TextField(),
              ),
              Container(
                height: 30,
                color: Colors.black,
                child: const TextField(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
