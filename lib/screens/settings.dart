import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpups/utils/theme.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: true,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: AppColors.mainText,
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Storage Directory",
                    style: TextStyle(color: AppColors.mainText, fontSize: 20)),
                SizedBox(height: 5),
                Text("Set the storage directory of your wallpapers",
                    style: TextStyle(color: AppColors.mainText, fontSize: 10)),
                SizedBox(height: 20),
//item 2
                Text("Report bugs",
                    style: TextStyle(color: AppColors.mainText, fontSize: 20)),
                SizedBox(height: 5),
                Text("Let us know the bugs you found",
                    style: TextStyle(color: AppColors.mainText, fontSize: 10)),
                SizedBox(height: 20),
                //rate us
                Text("Rate us ",
                    style: TextStyle(color: AppColors.mainText, fontSize: 20)),
                SizedBox(height: 5),
                Text("what dio you  think of the App?",
                    style: TextStyle(color: AppColors.mainText, fontSize: 10)),
                SizedBox(height: 20),

                //image quality
                Text("Set the image quality",
                    style: TextStyle(color: AppColors.mainText, fontSize: 20)),
                SizedBox(height: 5),
                Text("Set the image qulaity of the wallpapers",
                    style: TextStyle(color: AppColors.mainText, fontSize: 10)),
                SizedBox(height: 20),
                //support
                Text("Support the developer",
                    style:
                        TextStyle(color: AppColors.themeColors, fontSize: 20)),
                SizedBox(height: 5),
                Text(" help us grow :)",
                    style: TextStyle(color: AppColors.mainText, fontSize: 10)),
                SizedBox(height: 20),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
