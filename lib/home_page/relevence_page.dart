import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/home_page/homepage.dart';

List list = [
  {
    "image": "assets/images/politics.jpg",
    "Topic": "Politics: ",
  },
  {
    "image": "assets/images/sports.jpg",
    "Topic": "Sports:",
  },
  {
    "image": "assets/images/adventures.jpg",
    "Topic": "Advetures:",
  },
  {
    "image": "assets/images/entertainment.jpg",
    "Topic": "Entertainment",
  },
  {
    "image": "assets/images/politics.jpg",
    "Topic": "Politics:",
  },
  {
    "image": "assets/images/sports.jpg",
    "Topic": "Sports:",
  },
  {
    "image": "assets/images/adventures.jpg",
    "Topic": "Advetures:",
  },
  {
    "image": "assets/images/entertainment.jpg",
    "Topic": "Entertainment:",
  },
];

class Relevence extends StatelessWidget {
  const Relevence({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.to(const HomePage());
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: const Padding(
          padding: EdgeInsets.only(left: 65),
          child: Text(
            " Relevency",
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, bottom: 15),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  upperTitle(title: "All News", backgroundColor: Colors.red),
                  upperTitle(title: "Major News", backgroundColor: Colors.blue),
                  upperTitle(title: "No News", backgroundColor: Colors.yellow),
                ]),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                // crossAxisSpacing: 5, mainAxisSpacing: 5
              ),
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
                return stack(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Row upperTitle({
    required String title,
    Color? backgroundColor,
  }) {
    return Row(
      children: [
        CircleAvatar(
          radius: 7,
          backgroundColor: backgroundColor,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 3),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

Widget stack({
  String? name,
  required int index,
//  required  String title,
}) {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Stack(
      children: [
        Container(
          foregroundDecoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                stops: [0, 0.5]),
          ),
          height: 166,
          width: 200,
          child: Image.asset(
            list[index]["image"],
            fit: BoxFit.fill,
            // height: 150,
            // width: 150,
          ),
        ),
        Positioned(
            bottom: 6,
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    list[index]["Topic"],
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children: [
                      Text(
                        "Select:",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.red,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.blue,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.yellow,
                      ),
                    ],
                  )
                ],
              ),
            )),
      ],
    ),
  );
}
