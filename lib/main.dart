
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
    );
  }

}