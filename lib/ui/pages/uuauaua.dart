import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

extension on TextStyle {
  TextStyle get withZoomFix => copyWith(wordSpacing: 0);
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FittedBox(
                    child: Text(
                      "AM.",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 30)
                              .withZoomFix,
                    ),
                    fit: BoxFit.contain,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Home",
                        style:
                            Theme.of(context).textTheme.bodyText1.withZoomFix,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Project",
                        style:
                            Theme.of(context).textTheme.bodyText1.withZoomFix,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Blog",
                        style:
                            Theme.of(context).textTheme.bodyText1.withZoomFix,
                      ),
                      SizedBox(
                        width: 60,
                      ),
                      Text(
                        "Contact",
                        style:
                            Theme.of(context).textTheme.bodyText1.withZoomFix,
                      )
                    ],
                  )
                ],
              ),
            ),
            ListView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              children: [
                Container(
//                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: screenHeight / 4,
                        width: screenWidth / 4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("myphotoprofile.png"),
                          ),
                        ),
                      ),
                      Text(
                        "I'm Flutter Developer",
                        style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth / 50)
                            .withZoomFix,
                      ),
                      Text(
                        "Welcome To My Web",
                        style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: screenWidth / 50)
                            .withZoomFix,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            splashRadius: 15,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            icon: FaIcon(
                              FontAwesomeIcons.google,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            splashRadius: 15,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            icon: FaIcon(
                              FontAwesomeIcons.facebook,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            splashRadius: 15,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            splashRadius: 15,
                            splashColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            icon: FaIcon(
                              FontAwesomeIcons.github,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 20,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: screenWidth / 8,
                    height: screenHeight / 8,
                    color: Colors.pinkAccent,
                    child: Center(
                      child: Text(
                        "Project",
                        style: TextStyle(
                                fontSize: screenWidth / 50,
                                fontWeight: FontWeight.w600)
                            .withZoomFix,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    width: screenWidth / 8,
                    height: screenHeight / 8,
//                    color: Colors.orange,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: screenWidth / 65),
                        height: screenHeight / 8,
                        width: screenWidth / 8,
                        color: Colors.pinkAccent,
                        child: Center(
                            child: Text(
                          "Coming Soon",
                          style: TextStyle(
                            fontSize: screenWidth / 70,
                          ).withZoomFix,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 25,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    width: screenWidth / 8,
                    height: screenHeight / 8,
                    color: Colors.cyan,
                    child: Center(
                      child: Text(
                        "Blog",
                        style: TextStyle(
                                fontSize: screenWidth / 50,
                                fontWeight: FontWeight.w600)
                            .withZoomFix,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    width: screenWidth / 8,
                    height: screenHeight / 8,
//                    color: Colors.orange,
                    child: ListView.builder(
                      physics: ClampingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 15,
                      itemBuilder: (context, index) => Container(
                        margin: EdgeInsets.only(left: screenWidth / 65),
                        height: screenHeight / 8,
                        width: screenWidth / 8,
                        color: Colors.cyan,
                        child: Center(
                            child: Text(
                          "Coming Soon",
                          style: TextStyle(
                            fontSize: screenWidth / 70,
                          ).withZoomFix,
                        )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight / 25,
            ),
            Container(
              width: screenWidth / 15,
              height: screenHeight / 15,
              color: Colors.amber,
              child: Center(
                child: Text(
                  "Services",
                  style: TextStyle(
                          fontSize: screenWidth / 50,
                          fontWeight: FontWeight.w600)
                      .withZoomFix,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

//Row(
//              children: [
//                Expanded(
//                  flex: 6,
//                  child: Container(
//                    width: screenWidth / 8,
//                    height: screenHeight / 8,
////                    color: Colors.orange,
//                    child: ListView.builder(
//                      physics: ClampingScrollPhysics(),
//                      scrollDirection: Axis.horizontal,
//                      shrinkWrap: true,
//                      itemCount: 15,
//                      itemBuilder: (context, index) => Container(
//                          margin: EdgeInsets.only(right: 20),
//                          height: screenHeight / 8,
//                          width: screenWidth / 8,
//                          color: Colors.pinkAccent),
//                    ),
//                  ),
//                ),
//                Expanded(
//                  flex: 1,
//                  child: Container(
//                    width: screenWidth / 8,
//                    height: screenHeight / 8,
//                    color: Colors.pinkAccent,
//                    child: Center(
//                      child: Text(
//                        "My Project",
//                        style:
//                            TextStyle(fontSize: screenWidth / 50).withZoomFix,
//                      ),
//                    ),
//                  ),
//                ),
//              ],
//            ),
