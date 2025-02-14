
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
   HomeScren({Key? key}) : super(key: key);

   List personInfo=[
     {"name":"RaFiuL RaZu","dept":"Computer Technology","Roll":"102621"},
     {"name":"RoBiuL SaZu","dept":"Computer Technology","Roll":"102621"},
     {"name":"RaiHaN RaZu","dept":"Computer Technology","Roll":"102621"},
     {"name":"RaFi IslaM","dept":"Computer Technology","Roll":"102621"},
     {"name":"RaFiZ Hasan","dept":"Computer Technology","Roll":"102621"},
     {"name":"SaFkaT SHaFin","dept":"Computer Technology","Roll":"102621"},
     {"name":"RaFiuL RaZu","dept":"Computer Technology","Roll":"102621"},
     {"name":"RaFiuL RaZu","dept":"Computer Technology","Roll":"102621"},
     {"name":"RaFiuL RaZu","dept":"Computer Technology","Roll":"102621"},
   ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.amber,
        title: Text("Home Design"),
      ),
      drawer: Drawer(),
     body: GridView.builder(

       itemCount:personInfo.length,
         gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
             crossAxisCount: 3,
         childAspectRatio: 0.75,
           crossAxisSpacing: 15,
           mainAxisSpacing: 15,
         ),
         itemBuilder:(context,index){
           return Card(
             child: Container(
               height: 100,
               width: 100,
               color: Colors.amber,
               child: Column(
                 children: [
                   Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp57OH7-b1dARGc3vujs7992FaDDvo-2w9Rw&s",height: 150,width: double.infinity,),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       children: [
                         Text("Name:${personInfo[index]["name"]),
                         Text("Dep :${personInfo[index]["dept"]),
                          Text("Roll :${personInfo[index]["Roll"]),
                       ],
                     ),
                   )
                 ],
               ),
             ),
           );
         }),
    );
  }

}

class ContactCard extends StatelessWidget {
  const ContactCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 100,
        width: 100,
        color: Colors.amber,
        child: Column(
          children: [
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp57OH7-b1dARGc3vujs7992FaDDvo-2w9Rw&s",height: 150,width: double.infinity,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text("RaFiuL RaZu"),
                  Text("Computer Enginner"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}