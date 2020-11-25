import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var url = "";

  @override
  void initState() {
    super.initState();
  }

  fetchData() async {
    var res = await http.get(url);
    print(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "포켓몬 앱",
      home: Scaffold(
        appBar: AppBar(
          title: Text("포켓몬 앱"),
          backgroundColor: Colors.indigo,
        ),
        body: Container(),
        drawer: Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.indigo,
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
