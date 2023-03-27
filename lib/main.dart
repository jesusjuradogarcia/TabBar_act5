import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
} //my app

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} // myhomepage statefullwidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.greenAccent),
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.add)),
              Tab(icon: Icon(Icons.directions_car)),
              Tab(icon: Icon(Icons.access_time)),
            ],
          ),
          centerTitle: true,
          title: Text('Innovasport'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.home, size: 350),
            Icon(Icons.add, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.access_time, size: 350),
          ],
        ),
      ),
    );
  }
}
