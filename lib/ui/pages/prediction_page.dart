part of 'pages.dart';

class PredictionPage extends StatefulWidget {
  final List indication;

  const PredictionPage({this.indication});

  @override
  _PredictionPageState createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  List bagian = [];

  @override
  Widget build(BuildContext context) {
    var contain = widget.indication.contains;
    if (contain('A') || contain('B')) {
      bagian.add('BLB');
    }
    if (contain('C') || contain('D')) {
      bagian.add('BLS');
    }
    if (contain('E') || contain('F') || contain('G')) {
      bagian.add('HP');
    }
    if (contain('H') || contain('I') || contain('J')) {
      bagian.add('LB');
    }
    if (contain('K') || contain('L')) {
      bagian.add('NB');
    }
    if (contain('M')) {
      bagian.add('BD');
    }
    return Scaffold(
      body: ListView.builder(
        itemCount: bagian.length,
        itemBuilder: (context, index) {
          var chek =
              diseaseData.where((element) => element["id"] == bagian[index]);
          print(chek);
          return Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
//            Image.asset('myphotoprofile.png'),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Text(
                      chek.elementAt(0)["name"],
                      style: TextStyle(fontWeight: FontWeight.w700).withZoomFix,
                    ),
                  )),
                  Row(
                    children: [
                      Text(
                        "Affected Part :",
                        style:
                            TextStyle(fontWeight: FontWeight.w600).withZoomFix,
                      ),
                      Text(
                        chek.elementAt(0)["id"] == "BLB" ||
                                chek.elementAt(0)["id"] == "BLS" ||
                                chek.elementAt(0)["id"] == "LB" ||
                                chek.elementAt(0)["id"] == "BD"
                            ? "Daun "
                            : chek.elementAt(0)["id"] == "HP"
                                ? "Batang"
                                : "Malai",
                        textAlign: TextAlign.justify,
                        style: TextStyle().withZoomFix,
                      ),
                    ],
                  ),
                  Text(
                    "Description",
                    style: TextStyle(fontWeight: FontWeight.w600).withZoomFix,
                  ),
                  Text(
                    chek.elementAt(0)["description"],
                    textAlign: TextAlign.justify,
                    style: TextStyle().withZoomFix,
                  ),
                  Text(
                    "Treatment",
                    style: TextStyle(fontWeight: FontWeight.w600).withZoomFix,
                  ),
                  Text(
                    chek.elementAt(0)["treatment"],
                    textAlign: TextAlign.justify,
                    style: TextStyle().withZoomFix,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
