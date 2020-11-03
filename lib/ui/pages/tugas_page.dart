part of 'pages.dart';

class TugasPage extends StatefulWidget {
  @override
  _TugasPageState createState() => _TugasPageState();
}

class _TugasPageState extends State<TugasPage> {
  List checkIndication = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: indicationData.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            controlAffinity: ListTileControlAffinity.leading,
            title: Text(indicationData[index]['explanation']),
            value: checkIndication.contains(indicationData[index]['id']),
            onChanged: (bool value) {
              if (value == false) {
                setState(() {
                  checkIndication.remove(indicationData[index]['id']);
                  print(checkIndication);
                });
              } else {
                setState(() {
                  checkIndication.add(indicationData[index]['id']);
                  print(checkIndication);
                });
              }
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          "Check",
          style: TextStyle().withZoomFix,
        ),
        onPressed: () {
          if (checkIndication.isEmpty) {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Text(
                      "Mohon Pilih Gejala",
                      textAlign: TextAlign.center,
                    ),
                  );
                });
          } else {
            Navigator.pushNamed(context, "/prediction",
                arguments: ScreenArguments(checkIndication));
          }
        },
      ),
    );
  }
}

class ScreenArguments {
  List prediction;
  ScreenArguments(this.prediction);
}
