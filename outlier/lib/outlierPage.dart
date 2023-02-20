import 'package:flutter/material.dart';
import 'package:outlier/outlierFinder.dart';

class OutlierPage extends StatefulWidget {
  const OutlierPage({super.key, required this.title, required this.numbers});

  final List<int> numbers;
  final String title;

  @override
  State<OutlierPage> createState() => _OutlierPage();
}

class _OutlierPage extends State<OutlierPage> implements OutlierFinder {
  @override
  List<int> getAllEven(List<int> numbers) {
    return numbers.where((number) => number % 2 == 0).toList();
  }

  @override
  List<int> getAllUneven(List<int> numbers) {
    return numbers.where((number) => number % 2 == 1).toList();
  }

  @override
  int returnOutlier(List<int> numbers) {
    var evenNumbers = getAllEven(numbers);
    var unevenNumbers = getAllUneven(numbers);

    if (evenNumbers.length == 1) {
      return evenNumbers[0];
    } else if (unevenNumbers.isNotEmpty) {
      return unevenNumbers[0];
    }

    return -1;
  }

  @override
  Widget build(BuildContext context) {
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
                child: Text(returnOutlier(widget.numbers).toString(),
                    style: const TextStyle(fontSize: 45)),
              ),
            ])));
  }
}
