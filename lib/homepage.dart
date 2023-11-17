import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/widgets/commontext.dart';

List wildlife = [
  {
    "image1": "assets/images/wildlife1.jpg",
    "news": "wildlife: ",
    "content": "Ukraine conflict: Kyiv braces for Russia "
  },
  {
    "image1": "assets/images/wildlife2.jpg",
    "news": "wildlife:",
    "content": "Ukraine conflict: Kyiv braces for Russia "
  },
  {
    "image1": "assets/images/wildlife3.jpg",
    "news": "wildlife:",
    "content": "Ukraine conflict: Kyiv braces for Russia"
  },
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
            icon: Icon(Icons.feed),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.pinkAccent,
            icon: Icon(Icons.save),
            label: 'Save',
          ),
        ],
      ),
      drawer: Drawer(
        elevation: 0,
        width: 250,
        child: Container(
          child: ListView(children: [
            DrawerHeader(child: Image.asset("assets/images/news_logo.jpg")),
            const Row(
              children: [
                Commontext(
                  text: "Language",
                  fontSize: 21,
                  icon: Icons.language,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Commontext(
                  text: "Notification",
                  fontSize: 21,
                  icon: Icons.notifications,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Commontext(
                  text: "Relevancy",
                  fontSize: 21,
                  icon: Icons.privacy_tip,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Commontext(
                  text: "HD Images",
                  fontSize: 21,
                  icon: Icons.image,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Commontext(
                  text: "Text Size",
                  fontSize: 21,
                  icon: Icons.text_decrease,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
          ]),
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff4A43EC),
          leading: InkWell(
              onTap: () {
                const Drawer();
              },
              child:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active),
            )
          ]),
      body: Stack(
        children: [
          Container(
            color: Colors.white,
            height: Get.height,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 160,
                    color: Colors.white,
                  ),
                  Container(
                    height: 140,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21),
                          bottomRight: Radius.circular(21)),
                      color: Color(0xff4A43EC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: const Icon(
                              Icons.filter_list,
                              color: Colors.white,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            hintText: "|   Search for News",
                            hintStyle: const TextStyle(color: Colors.white30),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(21))),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 1,
                    child: Row(
                      children: [
                        commonContainer(
                            title: "All News", color: const Color(0xffF0635A)),
                        commonContainer(
                            title: "Top Stories",
                            color: const Color(0xffF59762)),
                        commonContainer(
                            title: "All Trending",
                            color: const Color(0xff29D697)),
                      ],
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 24, right: 05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Commontext(
                      text: "Trending",
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    Commontext(
                      text: "See All",
                      fontSize: 12,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: Get.height * 0.31,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: wildlife.length,
                  itemBuilder: (context, index) => wildLife(index: index),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Commontext(
                  text: "Latest",
                  decoration: TextDecoration.underline,
                  fontSize: 21,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Expanded(
                // height: Get.height ,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: wildlife.length,
                  itemBuilder: (context, index) => newsScroll(index: index),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding commonContainer({
    required String title,
    Color? color,
    double? bottom,
    double? left,
    double? right,
  }) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5,
      ),
      child: Container(
          height: 40,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            color: color,
          ),
          child: Center(child: Text(title))),
    );
  }
}

Widget wildLife({
  required int index,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
              ),
              child: Image.asset(
                wildlife[index]["image1"],
                height: 160,
                width: 260,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              wildlife[index]["news"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              wildlife[index]["content"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ],
    ),
  );
}

Widget newsScroll({
  required int index,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21),
              ),
              child: Image.asset(
                wildlife[index]["image1"],
                height: 20,
                width: 30,
                fit: BoxFit.fill,
              ),
            ),
            Text(
              wildlife[index]["news"],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(wildlife[index]["content"])
          ],
        ),
      ],
    ),
  );
}
