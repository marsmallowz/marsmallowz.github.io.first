part of 'pages.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
//  GoogleMapController mapController;
//
//  final LatLng _center = const LatLng(45.521563, -122.677433);
//
//  void _onMapCreated(GoogleMapController controller) {
//    mapController = controller;
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.pinkAccent,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.lightBlueAccent,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "About Me",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)
                              .withZoomFix,
                    ),
                    Text(
                      "Perkenalkan nama saya Alsandy Maulana, sekarang sedang belajar memperdalami penggunaan flutter untuk pembuatan aplikasi Android dan Web.",
                      style: TextStyle(
                        fontSize: 12,
                      ).withZoomFix,
                      textAlign: TextAlign.justify,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Kecamatan Tanjungpinang Timur, Kota Tanjungpinang,\nProvinsi Kepulauan Riau",
                      style: TextStyle(
                        fontSize: 12,
                      ).withZoomFix,
                      textAlign: TextAlign.justify,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 3,
                    ),
                    AllButtonSocialMedia(
                      color: Colors.white,
                    ),
                    Text(
                      "Contact Me",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)
                              .withZoomFix,
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.phone)),
                        Text("081904873006")
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.mail_outline)),
                        Text(
                          "alsandymaulana15@gmail.com",
                          style: TextStyle().withZoomFix,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Click Me",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)
                              .withZoomFix,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: RaisedButton(
                            color: Colors.white,
                            child: Text(
                              "Whatsapp",
                              style: TextStyle().withZoomFix,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: RaisedButton(
                            color: Colors.white,
                            child: Text("Telegram",
                                style: TextStyle().withZoomFix),
                            onPressed: () {},
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
