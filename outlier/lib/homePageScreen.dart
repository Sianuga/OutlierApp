import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget 
{
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

  //Implement interface for button action

class _MyHomePageState extends State<MyHomePage> 
{



  @override
  Widget build(BuildContext context) 
  {
    void printConsole()
    {
        print("Clicked");
    }

    void changeToOutlierScreen()
    {
      //Implement changing to outlierScreen
    }
 
    


    return Scaffold(

      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Center(

        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[

            const Padding(
              padding:  EdgeInsets.all(10.0),
              child: Text(
                'Enter comma-seperated numbers:',
              ),
            ),
         
            //Select appropriate size for textField
           const Padding(
              padding: EdgeInsets.only(top: 10.0, bottom: 10.0, left: 60, right: 60),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                hintText: 'Enter numbers',
                
                ),
                ),
            ),

           Padding(
              padding: const EdgeInsets.all( 10.0),
              child: TextButton(
                onPressed: printConsole,

                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all<Size>(
                    const Size(150,50), 
                  )
                ),

                child: const Text(
                  'Wyszukaj',
                )
                ),
            )

          ],
          
        ),

      ),
   
    );
  }
}
