import 'package:flutter/material.dart'; //To import the material package

void main() {
  runApp(MyApp()); //runApp() makes the given widget the root widget
}

class MyApp extends StatelessWidget {
  //StatelessWidget is like a constant..its immutable and cannot be redrawn over.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //MaterialApp is a predefined class that provides access to multiple widgets.
      debugShowCheckedModeBanner:
          false, //This statement of code is to remove the debug icon on top of the app screen.
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        //Scaffold is another class that contains widgets like AppBar,FloatingActionButton,etc.
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 70,
          backgroundColor: Colors.grey[200],
          leading: Image.asset("assets/images/Hamburger_icon.png"),
          actions: [
            //actions parameter accepts a list of widgets as its parameter.
            Container(
                //to wrap our searchicon in a circular white shape we use this container attribute.
                decoration: BoxDecoration(
                  //To provide the details such as shape,color,etc. of our container element.
                  shape: BoxShape.circle, //defines the shape of the container.
                  color: Colors.white, //defines the color of the container.
                ),
                margin: EdgeInsets.all(5),
                child: Image.asset("assets/images/searchicon.png"))
          ],
        ),
        body: Column(
          children: [
            Row(children: [
              SizedBox(
                width: 15,
              ),
              Text(
                "Regalo ",
                style: TextStyle(fontSize: 32),
              ),
              Text(
                "Boutique",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            Row(
              children: [
                // ignore: deprecated_member_use
                FlatButton(
                    onPressed: () {
                      print("Button Pressed");
                    },
                    child: Text("Women's Wear")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
