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
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () => Navigator.pop(context, false),
        ),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            InkWell(
              child: Text(
                "text1",
                style: TextStyle(
                    color: AppColors.mainText, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
