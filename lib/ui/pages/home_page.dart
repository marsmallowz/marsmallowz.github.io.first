part of 'pages.dart';

extension on TextStyle {
  TextStyle get withZoomFix => copyWith(wordSpacing: 0);
}

enum Status { mobile, tablet, desktop }
var scaffoldKey = GlobalKey<ScaffoldState>();

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    var platform = Theme.of(context).platform;
    print(screenWidth / 8);
    print(screenHeight / 3);
    var zoomFix = Theme.of(context).textTheme.bodyText1.withZoomFix;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: FittedBox(
          child: Text(
            "AM.",
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 30)
                .withZoomFix,
          ),
          fit: BoxFit.contain,
        ),
        actions: [
          screenWidth < 700
              ? IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    scaffoldKey.currentState.openEndDrawer();
                  },
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home",
                      style: zoomFix,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Project",
                      style: zoomFix,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Blog",
                      style: zoomFix,
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    GestureDetector(
                      child: Text(
                        "About",
                        style: zoomFix,
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, "/myprofile");
                      },
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
        ],
      ),
      endDrawerEnableOpenDragGesture: false,
      endDrawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, constraint) {
            if (constraint.maxWidth < 425) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  sloganPhotoSocialMedia(platform, screenWidth, 15),
                  SizedBox(
                    height: screenHeight / 60,
                  ),
                  ProjectList(
                      height: 265 / 3,
                      width: 210 / 2,
                      screenWidth: screenWidth),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                  BlogList(
                      height: 100 / 3,
                      width: 210 / 2,
                      screenWidth: screenWidth),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                  Container(
                    width: 600,
                    height: screenHeight / 10,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "Coming Soon",
                        style: TextStyle(
                                fontSize: 210 / 11, fontWeight: FontWeight.w600)
                            .withZoomFix,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                ],
              );
            } else if (constraint.maxWidth < 600) {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  sloganPhotoSocialMedia(platform, screenWidth, 20),
                  SizedBox(
                    height: screenHeight / 60,
                  ),
                  ProjectList(
                      height: 265 / 2,
                      width: 210 / 2,
                      screenWidth: screenWidth),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                  BlogList(
                      height: 100 / 2,
                      width: 210 / 2,
                      screenWidth: screenWidth),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                  Container(
                    width: 600,
                    height: screenHeight / 10,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "Coming Soon",
                        style: TextStyle(
                                fontSize: 210 / 11, fontWeight: FontWeight.w600)
                            .withZoomFix,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                ],
              );
            } else {
              return Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  sloganPhotoSocialMedia(platform, screenWidth, 30),
                  SizedBox(
                    height: screenHeight / 60,
                  ),
                  ProjectList(
                      width: 210, height: 265, screenWidth: screenWidth),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                  BlogList(height: 100, width: 210, screenWidth: screenWidth),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                  Container(
                    width: 600,
                    height: screenHeight / 10,
                    color: Colors.amber,
                    child: Center(
                      child: Text(
                        "Coming Soon",
                        style: TextStyle(
                                fontSize: 210 / 11, fontWeight: FontWeight.w600)
                            .withZoomFix,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight / 55,
                  ),
                ],
              );
            }
          }),
        ),
      ),
    );
  }

  Column sloganPhotoSocialMedia(
      TargetPlatform platform, double screenWidth, double fontSize) {
    return Column(
      children: [
        Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      //AssetImage
                      image: AssetImage(platform == TargetPlatform.android
                          ? "assets/myphotoprofile.png"
                          : "myphotoprofile.png"),
                      fit: BoxFit.none),
                ),
              ),
              Text(
                "I'm Flutter Developer",
                style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize)
                        .withZoomFix,
              ),
              Text(
                "Welcome To My Blah",
                style:
                    TextStyle(fontWeight: FontWeight.w600, fontSize: fontSize)
                        .withZoomFix,
              ),
              AllButtonSocialMedia(
                size: fontSize - 7,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BlogList extends StatelessWidget {
  const BlogList({
    this.screenWidth,
    this.width,
    this.height,
  });

  final double screenWidth;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          height: height,
          color: Colors.cyan,
          child: Center(
            child: Text(
              "Blog",
              style:
                  TextStyle(fontSize: width / 11, fontWeight: FontWeight.w600)
                      .withZoomFix,
            ),
          ),
        ),
        Container(
          width: screenWidth - 40 - width,
          height: height,
//                    color: Colors.orange,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(left: screenWidth / 65),
              height: height,
              width: width - 18,
              color: Colors.cyan,
              child: Center(
                  child: Text(
                "Coming Soon",
                style: TextStyle(
                  fontSize: width / 11,
                ).withZoomFix,
              )),
            ),
          ),
        ),
      ],
    );
  }
}

class ProjectList extends StatelessWidget {
  const ProjectList({
    this.screenWidth,
    this.width,
    this.height,
  });
//210 265

  final double screenWidth;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width,
          height: height,
          color: Colors.pinkAccent,
          child: Center(
            child: Text(
              "Project",
              style:
                  TextStyle(fontSize: width / 11, fontWeight: FontWeight.w600)
                      .withZoomFix,
            ),
          ),
        ),
        Container(
          width: screenWidth - 40 - width,
          height: height,
//                    color: Colors.orange,
          child: ListView.builder(
            physics: ClampingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: 15,
            itemBuilder: (context, index) => Container(
              margin: EdgeInsets.only(left: screenWidth / 65),
              height: height,
              width: width - 18,
              color: Colors.pinkAccent,
              child: Center(
                  child: Text(
                "Coming Soon",
                style: TextStyle(
                  fontSize: width / 11,
                ).withZoomFix,
              )),
            ),
          ),
        ),
      ],
    );
  }
}

class AllButtonSocialMedia extends StatelessWidget {
  final double size;
  const AllButtonSocialMedia({this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButtonSocialMedia(
          icon: FaIcon(FontAwesomeIcons.instagram),
          url: "https://www.facebook.com/alsandymaulana/",
          size: size,
        ),
        IconButtonSocialMedia(
          icon: FaIcon(FontAwesomeIcons.facebook),
          url: "https://www.facebook.com/alsandymaulana/",
          size: size,
        ),
        IconButtonSocialMedia(
          icon: FaIcon(FontAwesomeIcons.linkedin),
          url: "https://www.facebook.com/alsandymaulana/",
          size: size,
        ),
        IconButtonSocialMedia(
          icon: FaIcon(FontAwesomeIcons.github),
          url: "https://www.facebook.com/alsandymaulana/",
          size: size,
        ),
      ],
    );
  }
}
