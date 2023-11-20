import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:news_app/home_page/homepage.dart';
import 'package:news_app/widgets/commontext.dart';

List newsImages = [
  {
    "image1": "assets/images/cric1.png",
    "news": "cricket",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    "swipe": "Swipe Up for more at Sportskeeda /few hours ago"
  },
  {
    "image1": "assets/images/cric2.jpg",
    "news": "cricket",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    "swipe": "Swipe Up for more at Sportskeeda /few hours ago"
  },
  {
    "image1": "assets/images/cric3.jpg",
    "news": "cricket",
    "content":
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    "swipe": "Swipe Up for more at Sportskeeda /few hours ago"
  },
];

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: newsImages.length,
        itemBuilder: (context, index) {
          return news(index: index);
        },
      ),
    );
  }
}

news({
  required int index,
}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 300,
          child: Stack(
            children: [
              Container(
                height: 290,
                width: Get.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      newsImages[index]["image1"],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 2.5,
                left: 30,
                child: Container(
                  height: 20,
                  width: 86,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: const Color(0xFF4A43EC)),
                  child: Commontext(
                    onTap: () {
                      Get.to(const HomePage());
                    },
                    text: "Top Feeds",
                    textColor: Colors.white,
                  ),
                ),
              ),
              Positioned(
                bottom: 2.5,
                left: 307,
                child: Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: const Color(0xFF4A43EC)),
                  child: const Center(
                      child: Icon(
                    Icons.share,
                    color: Colors.white,
                    size: 12,
                  )),
                ),
              ),
              Positioned(
                bottom: 2.5,
                left: 331,
                child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        color: const Color(0xFF4A43EC)),
                    child: Center(
                      child: SvgPicture.asset("assets/images/saveicon.svg"),
                      // size: 12,
                      // color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Image.asset(
              //   newsImages[index]["image1"],
              // ),

              const SizedBox(
                height: 5,
              ),
              Commontext(
                text: newsImages[index]['news'],
                textColor: Colors.black,
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 5,
              ),
              Commontext(
                text: newsImages[index]['content'],
                fontSize: 14,
              ),
              const SizedBox(
                height: 10,
              ),
              Commontext(
                text: newsImages[index]['swipe'],
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
              const SizedBox(
                height: 5,
              ),
              const Icon(Icons.arrow_downward)
            ],
          ),
        )
      ],
    ),
  );
}
