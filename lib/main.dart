

import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
      
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.blueGrey,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        width: 150,
        child: Center(
          child: CircleAvatar(
            radius: 50,backgroundImage: AssetImage("tree.jpg"),
            ),
        ),

      ),
      endDrawer: Drawer(),
      appBar: AppBar( 
    actions: [
      Icon(Icons.search),
      Icon(Icons.settings)
    ],
    centerTitle: true,
    title: Text("First App"),
    backgroundColor: Colors.blueGrey,
    //leading: Icon(Icons.arrow_back_ios_new,color: Colors.white,size: 15,),
  ),
  body: 
  Column(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     crossAxisAlignment: CrossAxisAlignment.start,
    children: [
       Container(
           alignment: Alignment.center,
           width: 500,
           height: 300,
           
           decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("tree.jpg"),
            fit: BoxFit.cover
           ),
           
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Column(
                
                children: [
                  
                  Text(
                    "Name: ",
                    style: TextStyle(
                      fontFamily: "first",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                    ),
                    ),
                  Text(
                    "Phone: ",
                    style: TextStyle(
                      fontFamily: "first",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                    ),
                    ),
                  Text(
                    "Email: ",
                    style: TextStyle(
                      fontFamily: "first",
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                    ),
                    ),
                ],
              ),
              Column(
                
                children: [
                  
                   Container(
                    
          alignment: Alignment.center,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Call Him",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),

        ),
        Container(
          alignment: Alignment.center,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            "Add To Cotacts",
            style: TextStyle(
              fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold
            ),
            ),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
        ) 

                ],
              ),
            ],
          ), 
       
    ],
  ),
  
  

  
  

    
  // Image.network("https://images.ctfassets.net/hrltx12pl8hq/3Z1N8LpxtXNQhBD5EnIg8X/975e2497dc598bb64fde390592ae1133/spring-images-min.jpg",
  // width: 150,
  // height: 150,
  // fit: BoxFit.cover,)

  //Image.asset("tree.jpg")
  );
  }
}
