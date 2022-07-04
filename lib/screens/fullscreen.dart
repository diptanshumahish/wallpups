import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpups/wallpapermodel.dart';
import '../utils/theme.dart';

// ignore: must_be_immutable
class FullImage extends StatefulWidget {
  late int index;
  FullImage({Key? key, required this.index}) : super(key: key);

  @override
  State<FullImage> createState() => _FullImageState();
}

class _FullImageState extends State<FullImage> {
  //new wallpaper setting method:
  // String home = "Home Screen", lock = "Lock Screen";
  // Stream<String>? progressString;
  // String? res;
  // bool downloading = false;
  // var result = "waiting to set wallpaper...";
  // bool _isDisable = true;

  // @override
  // void initState() {
  //   super.initState();
  // }

  //above this

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppColors.mainBackgroundColor.withOpacity(0.1),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context, false),
        ),
        title: const Text(
          "Image preview",
          style: TextStyle(
            color: AppColors.mainText,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.6,
            fontSize: 20,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(wallPaper[widget.index]),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: AppColors.mainBackgroundColor.withOpacity(0.5)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dimensions:1080x1920",
                      style: TextStyle(
                          color: AppColors.mainText.withOpacity(0.8),
                          fontSize: 14,
                          letterSpacing: 0.4),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Source:Unsplash",
                      style: TextStyle(
                          color: AppColors.mainText.withOpacity(0.9),
                          letterSpacing: 0.4,
                          fontSize: 14),
                    ),
                    GestureDetector(
                      // onTap: _isDisable
                      //     ? null
                      //     : () async {
                      //         var width = MediaQuery.of(context).size.width;
                      //         var height = MediaQuery.of(context).size.height;
                      //         home = await Wallpaper.homeScreen(
                      //             options: RequestSizeOptions.RESIZE_FIT,
                      //             width: width,
                      //             height: height);
                      //         setState(() {
                      //           downloading = false;
                      //           home = home;
                      //         });
                      //         print("Task Done");
                      //       },
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                            color: AppColors.themeColors.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5)),
                        child: const Text(
                          "Set Wallpaper",
                          style: TextStyle(color: AppColors.mainText),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height / 1.2,
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: const Icon(
                            CupertinoIcons.heart,
                            color: AppColors.mainText,
                            size: 20,
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () async {
                            // return await dowloadImage(widget.index);
                          },
                          child: const Icon(CupertinoIcons.download_circle,
                              color: AppColors.mainText, size: 20),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          child: const Icon(CupertinoIcons.share_up,
                              color: AppColors.mainText, size: 20),
                        )
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

//   Future<void> dowloadImage(int index) async {
//     progressString = Wallpaper.imageDownloadProgress(wallPaper[index]);
//     progressString?.listen((data) {
//       setState(() {
//         res = data;
//         downloading = true;
//       });
//       print("DataReceived: " + data);
//     }, onDone: () async {
//       setState(() {
//         downloading = false;

//         _isDisable = false;
//       });
//       print("Task Done");
//     }, onError: (error) {
//       setState(() {
//         downloading = false;
//         _isDisable = true;
//       });
//       print("Some Error");
//     });
//   }
}
