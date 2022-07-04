import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wallpups/utils/theme.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map> searchBoxes = [
      {
        "id": "Night Sky",
        "imageUrl":
            "https://images.unsplash.com/photo-1472552944129-b035e9ea3744?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        "subtext": "Gather around , sky lovers."
      },
      {
        "id": "Anime",
        "imageUrl":
            "https://images.unsplash.com/photo-1607604276583-eef5d076aa5f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80",
        "subtext": "Here's for the anime guys."
      },
      {
        "id": "CityScapes",
        "imageUrl":
            "https://images.unsplash.com/photo-1513635269975-59663e0ac1ad?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        "subtext": "The beautiful cityline"
      },
      {
        "id": "Darkness",
        "imageUrl":
            "https://images.unsplash.com/photo-1474432978580-3d2a63f706e9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1469&q=80",
        "subtext": "All cold in here"
      },
      {
        "id": "Sunsets",
        "imageUrl":
            "https://images.unsplash.com/photo-1542159919831-40fb0656b45a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        "subtext": "The classic sunsets"
      },
      {
        "id": "Music",
        "imageUrl":
            "https://images.unsplash.com/photo-1459749411175-04bf5292ceea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        "subtext": "All musicians out there!"
      },
      {
        "id": "Nature",
        "imageUrl":
            "https://images.unsplash.com/photo-1431794062232-2a99a5431c6c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        "subtext": "Never forget the nature."
      },
      {
        "id": "Wildlife",
        "imageUrl":
            "https://images.unsplash.com/photo-1456926631375-92c8ce872def?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        "subtext": "Let,s not forget the wildlife"
      },
      {
        "id": "Mountains",
        "imageUrl":
            "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
        "subtext": "All the mountain lovers out there"
      },
      {
        "id": "River",
        "imageUrl":
            "https://images.unsplash.com/photo-1545641203-7d072a14e3b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1633&q=80",
        "subtext": "The birthplace of civilisations."
      },
      {
        "id": "Aesthetic",
        "imageUrl":
            "https://images.unsplash.com/photo-1609701538303-a5e2874d3426?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        "subtext": "Some good aesthetics"
      },
      {
        "id": "Ocean",
        "imageUrl":
            "https://images.unsplash.com/photo-1439405326854-014607f694d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
        "subtext": "Ahhh the oceans!"
      },
      {
        "id": "Drives",
        "imageUrl":
            "https://images.unsplash.com/photo-1471958680802-1345a694ba6d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1566&q=80",
        "subtext": "The lovely long drives."
      },
    ];

    return Scaffold(
        backgroundColor: AppColors.mainBackgroundColor,
        body: ListView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            SafeArea(
              bottom: false,
              child: SizedBox(
                height: 50,
                child: Center(
                    child: Text("Explore",
                        style: TextStyle(
                            color: AppColors.mainText,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.3))),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: CupertinoSearchTextField(
                placeholder: "search for Wallpapers",
                autocorrect: true,
                itemColor: AppColors.mainBackgroundColor,
                onChanged: (value) {},
                borderRadius: BorderRadius.circular(15),
                backgroundColor: AppColors.mainText.withOpacity(0.8),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 18, bottom: 10),
              child: SizedBox(
                  height: 30,
                  child: Text(
                    "Suggested for you",
                    style: TextStyle(
                        color: AppColors.mainText,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.5),
                  )),
            ),
            SizedBox(
              height: 1000,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10,
                    childAspectRatio: 4 / 3,
                  ),
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5),
                      child: Stack(
                        children: [
                          ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return const LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    AppColors.mainBackgroundColor,
                                    Colors.transparent,
                                  ],
                                ).createShader(
                                    const Rect.fromLTRB(0, 0, 0, 150));
                              },
                              blendMode: BlendMode.dstIn,
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          searchBoxes[index]["imageUrl"],
                                        ),
                                        fit: BoxFit.cover)),
                              )),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  searchBoxes[index]["id"],
                                  style: TextStyle(
                                      color: AppColors.mainText,
                                      fontSize: 25,
                                      fontWeight: FontWeight.w800,
                                      letterSpacing: 1.4),
                                ),
                                Text(
                                  searchBoxes[index]["subtext"],
                                  style: TextStyle(
                                      color: AppColors.mainText,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: 1.4),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
