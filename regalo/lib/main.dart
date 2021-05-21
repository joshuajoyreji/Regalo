
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
          elevation: 0, //To remove the shadow of the AppBar
          toolbarHeight:
              55, //To increase the toolbar height to fit icons better
          backgroundColor:
              Colors.grey[300], //Setting the bg color of the appbar
          leading: Image.asset(
              "images/hamburgericon.png"),
          actions: [
            //actions parameter accepts a list of widgets as its parameter.
            Container(
                //to wrap our searchicon in a circular white shape we use this container attribute.
                decoration: BoxDecoration(
                  //To provide the details such as shape,color,etc. of our container element.
                  shape: BoxShape.circle, //defines the shape of the container.
                  color: Colors.grey[200], //defines the color of the container.
                ),
                margin: EdgeInsets.all(
                    10), //To align the icon inside this container well wrt to all the edges
                child: Image.asset("images/Search_icon.png"))
          ],
        ),
        body: Column(
          //To make the widgets under this attribute appear in columnar format
          children: [
            Row(children: [
              SizedBox(
                //Setting a distance from the edges for the text appearing under this
                width: 15,
                height: 75,
              ),
              Text(
                "Regalo ",
                style: TextStyle(fontSize: 36, letterSpacing: 0.5),
              ),
              Text(
                "Boutique",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5),
              ),
            ]),
            SizedBox(
              width: 12,
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, //To evenly align the widgets inside.
              children: [
                // ignore: deprecated_member_use
                buildFlatButton(
                    "Women's Wear"), //Function calls for the FlatButton Method.
                buildFlatButton("Kid's Wear", selective: true),
                buildFlatButton("Men's Wear")
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                //To have an expanded container as wide as the remaining screen space.
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    //to give a shape to the borders of the container.
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 1, blurRadius: 14)
                  ]),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildColumnAtTop("Boys", isSelected: true),
                      buildColumnAtTop("Girls"),
                      buildColumnAtTop("Babies"),
                    ],
                  ),
                  Row(children: [
                    Column(children: [
                      Container(
                        height: 200,
                        width: 100,
                        child: Image.asset("accests/images/")),
                    ],)
                  ],)
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Column buildColumnAtTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 18, color: isSelected ? Colors.black : Colors.grey),
        ),
        SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration:
                BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          ),
      ],
    );
  }

  // ignore: deprecated_member_use
  FlatButton buildFlatButton(String text, {bool selective = false}) {
    //Here we extracted the flatbutton method and now we use it via function call.
    // ignore: deprecated_member_use
    return FlatButton(
        //To create a
        onPressed: () {
          print("Button Pressed");
        },
        child: Text(
          text,
          style: TextStyle(
              color: selective ? Colors.white : Colors.black, fontSize: 16),
        ),
        shape: StadiumBorder(),
        color: selective
            ? Colors.red
            : Colors.white); //This is a conditional operator(ternary)
  }
}
// i changed toolbar height