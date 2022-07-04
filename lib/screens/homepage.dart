import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wallpups/screens/fullscreen.dart';
import 'package:wallpups/wallpapermodel.dart';

import 'package:wallpups/utils/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final PageController pageController;
  int pageNo = 0;

  late Timer carouselTimer = getTimer();
  Timer getTimer() {
    return Timer.periodic(const Duration(seconds: 3), (timer) {
      if (pageNo == 4) {
        pageNo = 0;
      }
      pageController.animateToPage(pageNo,
          duration: const Duration(seconds: 1), curve: Curves.easeOut);
      pageNo++;
    });
  }

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.85,
    );
    carouselTimer = getTimer();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  final List<String> imagesList = [
    'https://source.unsplash.com/random/1920x1080/?city',
    'https://source.unsplash.com/random/1920x1080/?night',
    'https://source.unsplash.com/random/1280x720/?purple',
    'https://source.unsplash.com/random/1280x720/?sky',
    'https://source.unsplash.com/random/1280x720/?anime'
  ];

  @override
  Widget build(BuildContext context) {
    int newIndex = 0;
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                height: MediaQuery.of(context).size.height / 3,
              ),
              ShaderMask(
                shaderCallback: (Rect bounds) {
                  return const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.mainBackgroundColor,
                      Colors.transparent,
                    ],
                  ).createShader(const Rect.fromLTRB(0, 0, 0, 350));
                },
                blendMode: BlendMode.dstIn,
                child: Image.network(
                  'https://source.unsplash.com/random/1920x1080/?night',
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 30,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("Wallpups",
                        style: TextStyle(
                            color: AppColors.mainText,
                            fontSize: 50,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 2)),
                    SizedBox(
                      height: 10,
                    ),
                    Text("The best wallpapers you can ever have!",
                        style: TextStyle(
                            color: AppColors.mainText,
                            fontSize: 10,
                            fontWeight: FontWeight.w300,
                            letterSpacing: 0.9))
                  ],
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.width / 1.77,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              onPageChanged: (index) {
                pageNo = index;
                setState(() {});
              },
              itemBuilder: (_, index) {
                return AnimatedBuilder(
                    animation: pageController,
                    builder: (ctx, child) {
                      return child!;
                    },
                    child: Container(
                        margin: const EdgeInsets.all(12),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                  imagesList[index],
                                ),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(6))));
              },
              controller: pageController,
              itemCount: 5,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (index) => Container(
                margin: const EdgeInsets.all(5),
                child: Icon(
                  Icons.circle,
                  size: 10.0,
                  color: pageNo == index
                      ? AppColors.mainText
                      : AppColors.mainText.withOpacity(0.6),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 12,
          ),
          Container(
            margin: const EdgeInsets.only(left: 24),
            child: const Text(
              "Featured",
              style: TextStyle(
                  color: AppColors.mainText,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.9),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                height: 5000,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 10,
                      childAspectRatio: 9 / 16),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => FullImage(index: newIndex)));
                        setState(() {
                          newIndex = index;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(wallPaper[index]),
                                fit: BoxFit.fill),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    );
                  },
                  itemCount: 30,
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    "Visit the explore tab to see all wallpapers :)",
                    style: TextStyle(
                      color: AppColors.mainText.withOpacity(0.8),
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              const Text(
                "Made with ❤️ by Diptanshu",
                style: TextStyle(color: AppColors.themeColors),
              )
            ],
          )
        ],
      ),
    );
  }
}
