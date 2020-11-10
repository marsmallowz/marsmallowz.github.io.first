part of 'pages.dart';

class PredictionPage extends StatefulWidget {
  final List indication;

  const PredictionPage({this.indication});

  @override
  _PredictionPageState createState() => _PredictionPageState();
}

class _PredictionPageState extends State<PredictionPage> {
  List bagian = [];
  List k = [];
  List bagianPadi = [];

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
    /////////////////////////////////////////////////////////////////////////
    if (bagian.contains("BLB") && bagian.contains("BLS")) {
      bagian.remove("BLS");
      k.add("BLB");
    } else if (bagian.contains("BLB")) {
      k.add("BLB");
    }
    if (bagian.contains("BLS") &&
        !bagian.contains("BLB") &&
        bagian.contains("LB") &&
        bagian.contains("BD")) {
      bagian.remove("LB");
      bagian.remove("BD");
      k.add("BLS");
    } else if (bagian.contains("BLS")) {
      k.add("BLS");
    }
    if (bagian.contains("LB")) {
      k.add("LB");
    }
    if (bagian.contains("BD")) {
      k.add("BD");
    }
    if (bagian.contains("HP")) {
      k.add("HP");
    }
    if (bagian.contains("NB")) k.add("NB");

    if (bagian.contains("BLB") ||
        bagian.contains("BLB") ||
        bagian.contains("LB") ||
        bagian.contains("BD")) bagianPadi.add("daun");
    if (bagian.contains("HP")) bagianPadi.add("batang");
    if (bagian.contains("NB")) bagianPadi.add("malai");

    String getSick(List list) {
      if (list.length == 3) {
        return "${list[0]}, ${list[1]} dan ${list[2]}";
      } else if (list.length == 2) {
        return "${list[0]} dan ${list[1]}";
      } else {
        return "${list[0]}";
      }
    }

    print(k);
    return Scaffold(
      appBar: AppBar(
        title: Text("Bagian yang terserang: ${getSick(bagianPadi)}"),
      ),
      body: ListView.builder(
        itemCount: bagian.length,
        itemBuilder: (context, index) {
          var chek = diseaseData.where((element) => element["id"] == k[index]);
          return Center(
            child: Container(
              margin: EdgeInsets.only(bottom: 10, top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      chek.elementAt(0)["image"],
                      fit: BoxFit.cover,
                    ),
//                    child: Container(
//                      height: 300,
//                      width: 300,
//                      child: DecoratedBox(
//                        decoration: BoxDecoration(
//                          color: Colors.white,
//                          border: Border.all(),
//                          borderRadius: BorderRadius.circular(20),
//                        ),
//                        child: Image.network(
//                          'https://images.unsplash.com/photo-1541332246502-2e99eaa96cc1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80',
//                          loadingBuilder: (BuildContext context, Widget child,
//                              ImageChunkEvent loadingProgress) {
//                            if (loadingProgress == null) return child;
//                            return Center(
//                              child: CircularProgressIndicator(
//                                value: loadingProgress.expectedTotalBytes !=
//                                        null
//                                    ? loadingProgress.cumulativeBytesLoaded /
//                                        loadingProgress.expectedTotalBytes
//                                    : null,
//                              ),
//                            );
//                          },
//                        ),
//                      ),
//                    ),
                  ),
                  Center(
                      child: Container(
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    child: Text(
                      chek.elementAt(0)["name"],
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 18)
                              .withZoomFix,
                    ),
                  )),
                  Row(
                    children: [
                      Text(
                        "Bagian yang terserang :",
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
                    "Deskripsi",
                    style: TextStyle(fontWeight: FontWeight.w600).withZoomFix,
                  ),
                  Text(
                    chek.elementAt(0)["description"],
                    textAlign: TextAlign.justify,
                    style: TextStyle().withZoomFix,
                  ),
                  Text(
                    "Penanggulangan",
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
