import 'package:flutter/material.dart';
import 'flight_list_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();



}


class _HomeScreenState extends State<HomeScreen> {

  final nameController = TextEditingController();
  


  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }
  
  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(50.0),
          child: ListView(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/logo.png'),
                    height: 150.0,

                  ),

                  SizedBox(height: 20.0,),
                  Text("BookMyFlights",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 50.0,),
                  TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                      hintText: "Full Name",
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0)),
                  ),








                  SizedBox(height: 10.0,),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 100.0),
                    child: new Text("Proceed"),
                    color: Colors.amber,
                    shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => FlightListScreen( userFullName :nameController.text)));
                      print(nameController.text);
                    },
                  )
                ],
              ),
            ],
          ),
      ),
    );
  }
}
