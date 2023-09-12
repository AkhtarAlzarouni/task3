import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


  @override
  

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        
         
         actions: [
           Icon(Icons.list_sharp,color: Colors.black,),
          ],
          backgroundColor: Colors.white,
          leading: Icon(Icons.arrow_back_ios_new_sharp,color:
        Colors.black,
          size: 20, ),),

       body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
           width: 450,
  height: 200,
  clipBehavior: Clip.antiAlias,
  decoration:  BoxDecoration(
    borderRadius: BorderRadius.circular(15) // Adjust the radius as needed
  ),
  child: Image.asset(
    'assets/ii.jpg',
    fit: BoxFit.cover,
  ),
      ),
      Container(
        margin: EdgeInsets.only(right: 40),
        child: Text("Basic Yoga For Beginners",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),


        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           RatingBar.builder(
              initialRating: 3,
   minRating: 1,
   direction: Axis.horizontal,
   allowHalfRating: true,
   itemCount: 5,
   itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
   itemBuilder: (context, _) => Icon(
     Icons.star,
     color: Colors.amber,
     size: 1,
   ),
   onRatingUpdate: (rating) {
     print(rating);
   },),
   Container(
        margin: EdgeInsets.only(left: 80),
        child: Text("125 reviews",style: TextStyle(fontSize: 10,color: Colors.grey),)),


        ],)
       
       ,
      Container(
        margin: EdgeInsets.all(10),
        child: Text("Yoga is a mind and body practice that can build strength and flexibility. It may also help manage pain and reduce stress. Various styles of yoga combine physical postures, breathing techniques, and meditation.",style: TextStyle(fontSize: 14,color: Colors.grey),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Row(children: [
            Icon(Icons.graphic_eq,color: Colors.orange,),
            Text("Leval",style: TextStyle(fontSize: 14),),
            Text("01",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],),
          Row(children: [
            Icon(Icons.date_range,color: Colors.orange,),
            Text("week",style: TextStyle(fontSize: 14),),
            Text("01",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],),
          Row(children: [
            Icon(Icons.watch,color: Colors.orange,),
            Text("Mins",style: TextStyle(fontSize: 14),),
            Text("19",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
          ],)
        ],),
        Container(
        margin: EdgeInsets.only(right: 250,top: 30),
        child: Text("Schedule",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Column(children: [
             Container(
            margin: EdgeInsets.all(10),
           width: 170,
  height: 120,
  clipBehavior: Clip.antiAlias,
  decoration:  BoxDecoration(
    borderRadius: BorderRadius.circular(15) // Adjust the radius as needed
  ),
  child: Image.asset(
    'assets/gg.jpg',
    fit: BoxFit.cover,
  ),
      ),
      Container(
        margin: EdgeInsets.only(right: 20),
        child: Text("Gym For Beginners",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
      Container(
        margin: EdgeInsets.only(right: 100),
        child: Text("20:36",style: TextStyle(fontSize: 12,color: Colors.grey),)),


          ],),
           Column(children: [
             Container(
            margin: EdgeInsets.all(10),
           width: 170,
  height: 120,
  clipBehavior: Clip.antiAlias,
  decoration:  BoxDecoration(
    borderRadius: BorderRadius.circular(15) // Adjust the radius as needed
  ),
  child: Image.asset(
    'assets/yy.jpg',
    fit: BoxFit.cover,
  ),
      ),
      Container(
        margin: EdgeInsets.only(right: 20),
        child: Text("Yoga For Beginners",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
      Container(
        margin: EdgeInsets.only(right: 100),
        child: Text("35:20",style: TextStyle(fontSize: 12,color: Colors.grey),)),


          ],)
        ],)

        ],
       ),
        
       
     
    );
  }
} 