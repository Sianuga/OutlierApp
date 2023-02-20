import 'package:flutter/material.dart';
import 'outlierPage.dart';
import 'textManager.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var textController = TextEditingController();

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<int> splitAndParseToInt(String numbers) {
      if (numbers.isNotEmpty) {
        return numbers.split(',').map((number) => int.parse(number)).toList();
      } else {
        return List.empty();
      }
    }

    void clearTextField() {
      textController.clear();
    }

    void changeToOutlierScreen() {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return OutlierPage(
            title: 'OutlierPage',
            numbers: splitAndParseToInt(textController.text));
      }));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                TextManager().descriptionField,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10.0, bottom: 10.0, left: 60, right: 60),
              child: TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: TextManager().inputField,
                ),
                controller: textController,
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 5.0),
                child: SizedBox(
                  child: TextButton(
                      onPressed: changeToOutlierScreen,
                      style: const ButtonStyle(),
                      child: Text(
                        TextManager().searchButton,
                      )),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 10.0, bottom: 10.0, left: 25.0),
                child: SizedBox(
                  child: TextButton(
                      onPressed: clearTextField,
                      style: ButtonStyle(),
                      child: Text(
                        TextManager().clearButton,
                      )),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
