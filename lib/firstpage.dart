import 'dart:ui';

// import 'package:ecommerce/pages/practice_page/random_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/newspage.dart';
import 'package:news_app/widgets/commontext.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                "assets/images/collage.jpg",
              ),
            )),
          ),
          BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
              child: SizedBox(
                height: Get.height,
                width: Get.width,
              )),
          Positioned(
            bottom: 2,
            child: Container(
              height: 380,
              width: Get.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(21),
                    topRight: Radius.circular(21)),
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Commontext(
                    text: "Sign In",
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  commoncontainer(
                    icon: Image.asset(
                      "assets/images/facebook.png",
                      height: 30,
                      color: Colors.blue,
                    ),
                    text: "Continue with Facebook",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewsPage(),
                          ));
                    },
                  ),
                  // const SizedBox(),
                  commoncontainer(
                    icon: Image.asset("assets/images/google.png", height: 30),
                    text: "Continue with google",
                  ),
                  commoncontainer(
                      icon:
                          Image.asset("assets/images/twitter.png", height: 30),
                      text: "Continue with twitter"),
                  commoncontainer(
                    icon: const Icon(
                      Icons.phone,
                      size: 30,
                    ),
                    text: "Continue with Phone",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

commoncontainer({
  Widget? icon,
  required String text,
  String? image,
  Color? color,
  GestureTapCallback? onTap,
  
}) {
  return Container(
    color: Colors.white,
    height: 48,
    width: 326,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon ?? const SizedBox(),
        const SizedBox(
          width: 20,
        ),
        Commontext(
          text: text,
          onTap: onTap,
          // fontSize: 21,
        )
      ],
    ),
  );
}
