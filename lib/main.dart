import 'package:flutter/material.dart';
import 'model/uniqlo.dart';

void main() {
  runApp(const UniqloApp());
}

class UniqloApp extends StatelessWidget {
  const UniqloApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        appBarTheme: const AppBarTheme(
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(title: 'UNIQLO SHIRT'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(widget.title)
      ),
      body: SafeArea(child: Container(
        child: ListView.builder(
          itemCount: Uniqlo.samples.length,
          itemBuilder: (BuildContext context, int index) {
            // itemBuilder will work as for loop to generate list item
            // return a widget for each item list
            return buildRecipeCard(Uniqlo.samples[index]); //call functions
          },
        ),
      )
      ),
    );
  }

  Widget buildRecipeCard(Uniqlo uniqlo) {
    return Card(
      child: Column(
        children: <Widget>[
          Image(image: AssetImage(uniqlo.imgUrl)),
          Text(uniqlo.imgTitle),
        ],
      ),
    );
  }
}
// Hello World

