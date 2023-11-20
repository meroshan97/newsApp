import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/home_page/language_page.dart';
import 'package:news_app/home_page/privacy.dart';
import 'package:news_app/home_page/relevence_page.dart';
import 'package:news_app/home_page/textsize.dart';
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
      drawer: Drawer(
        elevation: 0,
        width: 250,
        child: ListView(
          children: [
            Row(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    "assets/images/news_logo.jpg",
                    height: 80,
                    width: 80,
                  ),
                ),
                const Commontext(
                  text: "My Name Here",
                  size: 24,
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Get.to(const LanguagePage());
              },
              child: row(
                text: "Language",
                icon: Icons.language,
              ),
            ),
            row(
              text: "Notification",
              icon: Icons.notifications,
            ),
            InkWell(
              onTap: () {
                Get.to(const Relevence());
              },
              child: row(
                text: "Relivency",
                icon: Icons.privacy_tip,
              ),
            ),
            row(
              text: "HD Images",
              icon: Icons.image,
            ),
            InkWell(
              onTap: () {
                Get.to(const TextSize());
              },
              child: row(
                text: "Text Size",
                icon: Icons.text_decrease,
              ),
            ),
            Container(
              color: const Color(0xffF0EFEF),
              height: 10,
            ),
            row(
              text: "Share this APP",
              icon: Icons.share,
            ),
            row(
              text: "Rate this App",
              icon: Icons.rate_review,
            ),
            row(
              text: "Feedback",
              icon: Icons.feedback,
            ),
            InkWell(
              onTap: () {
                Get.to(const PrivacyPage());
              },
              child: row(
                text: "Terms And Condition",
                icon: Icons.security,
              ),
            ),
            InkWell(
              onTap: () {
                Get.to(const PrivacyPage());
              },
              child: row(
                text: "Privacy",
                icon: Icons.privacy_tip,
              ),
            ),
            row(
              text: "Logout",
              icon: Icons.logout,
            ),
          ],
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff4A43EC),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.notifications_active),
            )
          ],
          ),
      resizeToAvoidBottomInset: false,
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
                    height: 150,
                    color: Colors.white,
                  ),
                  Container(
                    height: 130,
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

  Row row({required String text, IconData? icon}) {
    return Row(
      children: [
        Commontext(
          text: text,
          fontSize: 21,
          icon: icon,
          size: 30,
        ),
        const SizedBox(
          height: 40,
        )
      ],
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
