import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScren(),
    );
  }
}

class HomeScren extends StatelessWidget {
  HomeScren({Key? key}) : super(key: key);

  List personInfo = [
    {"name": "RaFiuL RaZu", "dept": "Computer Technology", "Roll": "102621"},
    {"name": "RoBiuL SaZu", "dept": "Civil Technology", "Roll": "102621"},
    {"name": "RaiHaN RaZu", "dept": "Electrical Technology", "Roll": "102621"},
    {"name": "RaFi IslaM", "dept": "Mechanical Technology", "Roll": "102621"},
    {"name": "RaFiZ Hasan", "dept": "Power Technology", "Roll": "102621"},
    {"name": "SaFkaT SHaFin", "dept": "AIDT Technology", "Roll": "102621"},
    {"name": "RaFiuL RaZu", "dept": "Cemical Technology", "Roll": "102621"},
    {"name": "RaFiuL RaZu", "dept": "Textitle Technology", "Roll": "102621"},
    {"name": "RaFiuL RaZu", "dept": "ICT Technology", "Roll": "102621"},
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
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPIft9QHkBup71HTVbX0xEakQ1cAOn-PwpyMJ0cS_VgYq0y8JtdPnQrEhxgCHFj7ZZgV4&usqp=CAU",width:double.infinity,),
              height: 150,
              width: double.infinity,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: personInfo.length,
                  gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    childAspectRatio: 0.65,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,),
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.grey,
                      child: Column(
                        children: [
                          Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTp57OH7-b1dARGc3vujs7992FaDDvo-2w9Rw&s",
                            height: 150,
                            width: double.maxFinite,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name :${personInfo[index]["name"]}",maxLines: 1,overflow: TextOverflow.ellipsis,),
                                Text("Dep :${personInfo[index]["dept"]}",maxLines: 1,overflow: TextOverflow.ellipsis,),
                                Text("Roll:${personInfo[index]["Roll"]}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
