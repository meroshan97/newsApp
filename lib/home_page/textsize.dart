import 'package:flutter/material.dart';

class TextSize extends StatelessWidget {
  const TextSize({super.key});

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
            "Text Size",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              
            },
            child: const Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Small"),
                    Icon(
                      Icons.done,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Medium"),
                  Icon(
                    Icons.done,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Large"),
                  Icon(Icons.done, color: Colors.white)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
