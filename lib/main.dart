
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }

}
class HomeScren extends StatelessWidget{
  const HomeScren({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
        title: Text("Home Design"),
      ),
      drawer: Drawer(),
     body: GridView(
         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
       children: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             height: 100,
             width: 100,
             color: Colors.amber,
             child: Column(
               children: [
                 Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp57OH7-b1dARGc3vujs7992FaDDvo-2w9Rw&s"),
                 Text("RaFiuL RaZu"),
                 Text("Computer Enginner"),
               ],
             ),
           ),
         ),
       ],
     ),
    );
  }

}