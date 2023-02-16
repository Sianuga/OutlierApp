

import 'package:flutter/material.dart';

class OutlierPage extends StatefulWidget
{
  const OutlierPage({super.key, required this.title, required this.numbers});


  final List<int> numbers;
  final String title;

  @override
  State<OutlierPage> createState() => _OutlierPage();
}

class _OutlierPage extends State<OutlierPage>
{

  @override
  Widget build(BuildContext context) 
  {

    List<int> getAllEven(List<int> numbers)
    {
      return numbers.where((number) => number%2==0).toList();
    }

    List<int> getAllUneven(List<int> numbers)
    {
      return numbers.where((number) => number%2==1).toList();
    }


    int returnOutlier(List<int> numbers)
    {
      var evenNumbers = getAllEven(numbers);
      var unevenNumbers = getAllUneven(numbers);

      if(evenNumbers.length==1 && unevenNumbers.isNotEmpty)
      {
        return evenNumbers[0];
      }
      else
      {
        return unevenNumbers[0];
      }

      return -1;
      
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

  body: Center(

        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,

          children:  <Widget>[

            Padding(
              padding:  const EdgeInsets.all(10.0),
              child: Text(
            returnOutlier(widget.numbers).toString(),
              style: const TextStyle(fontSize: 45) ),
             
            ),

          ]
        )
  )

    );




   
  }

}