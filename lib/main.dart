import 'package:flutter/material.dart';
import 'Widget/cardbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var assetImage = AssetImage("lib/images/haircut@3x.png");

    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 242, 252, 1.0),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Store",
              style: TextStyle(fontSize: 50),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                leading: Image(image: assetImage),
                title: Text(
                  "hello",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("world"),
                onTap: () => context,
              ),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                leading: Image(image: AssetImage("lib/images/haircut@3x.png")),
                title: Text(
                  "hello",
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text("world"),
                onTap: () => context,
              ),
            ),
          ],
        ));
  }
}
