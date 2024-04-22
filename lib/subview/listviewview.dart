import 'package:flutter/material.dart';

class listviewview extends StatefulWidget {
  const listviewview({super.key});

// item :List<String>.generate(100, (index) => "Item $index")
  // item :List<String>.generate(100, (index) => "Item $index")
  // item :List<String>.generate(100, (index) => "Item $index")
  // item :List<String>.generate(100, (index) => "Item $index")
  // item :List<String>.generate(100, (index) => "Item $index")


  @override
  State<listviewview> createState() => _listviewviewState();
}

class _listviewviewState extends State<listviewview> {

  // late final List<String> items;
  //  _listviewviewState(Key key,@required this.items);
     final List<String> items=List<String>.generate(100, (index) => "Item $index");
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "listview",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: null,
        body: ListView.builder(itemCount: items.length ,itemBuilder: (context, index) {
          return ListTile(
            
            leading: Icon(Icons.dangerous_outlined),
            // trailing: Icon(Icons.dangerous_outlined),
            title: Text(items[index]),
            
          );
        }
      ),
    )
    );
  }
}