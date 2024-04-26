import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path/path.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import 'bean/DogBean.dart';






class DataSave_preferences extends StatefulWidget {
  const DataSave_preferences({super.key});

  @override
  State<DataSave_preferences> createState() => _DataSaveState();
}

class _DataSaveState extends State<DataSave_preferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "数据存取",
          style: TextStyle(color: Colors.purple),
        ),
        titleTextStyle: TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(99, 99, 228, 8),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            "shared_preferences",
            style: TextStyle(
                fontSize: 20, color: Colors.red, backgroundColor: Colors.blue),
          ),

          SizedBox(
            height: 20,
          ),

          OutlinedButton(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(
                      TextStyle(fontSize: 18, color: Colors.blue)),
                  backgroundColor: MaterialStateProperty.all(Colors.red)),
              onPressed: () {
                print("---------------数据的保存-------MaterialStateProperty---------");
                saveData();
              },
              child: Text(
                "OutlinedButton_数据的保存",
                style: TextStyle(color: Colors.white),
              )),

          SizedBox(
            height: 20,
          ),

          Text("then 的异步返回数据 "),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              // setState(() {
              //      var mname=  findData();
              // print("---------------读取数据---------${mname}");
              // });
              findData().then((value) => {
                    print("---------------读取数据--1-------${value}---"),
                    

        Fluttertoast.showToast(msg: value,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0),
                    //  setState(() {
                    //    var mname=  findData();
                    //    print("---------------读取数据-----2----${mname}");
                    //  })
                  });
            },
            child: Text(
              "ElevatedButton_读取数据",
              style: TextStyle(color: Colors.white),
            ),
            style: ButtonStyle(
              textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 18, color: Colors.red)),
              backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          TextButton(
            onPressed: () {
              DeteleData();
              print("-------TextButton--------删除数据---------");
            },
            child: Text("RaisedButton_删除数据"),
          ),


   
          SizedBox(
            height:10,
          ),
      TextButton(
            onPressed: () {
             
             
               Fluttertoast.showToast(msg: "toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);


              print("-------TextButton--------toast---------");
            },
            child: Text("toast"),
          ),



                SizedBox(
            height:10,
          ),




          Text(
            "数据库存取_Sqflite ",
            style: TextStyle(
                fontSize: 20, color: Colors.red, backgroundColor: Colors.blue),
          ),


      TextButton(
            onPressed: () {
              // SqfliteCreate();

              print("-------TextButton-------数据库------插入数据---");
            },
            child: Text("RaisedButton_插入数据_数据库"),
          ),


      TextButton(
            onPressed: () {
              // SqfliteCreate();

              print("-------TextButton-------数据库------查询数据---");
            },
            child: Text("RaisedButton_查询_数据库"),
          ),




        ],
      ),
    );
  }

  void saveData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('name', '张三');
      prefs.setInt('age', 20);
      prefs.setBool('isStudent', true);

// Save an integer value to 'counter' key.
      await prefs.setInt('counter', 10);
// Save an boolean value to 'repeat' key.
      await prefs.setBool('repeat', true);
// Save an double value to 'decimal' key.
      await prefs.setDouble('decimal', 1.5);
// Save an String value to 'action' key.
      await prefs.setString('action', 'Start');
// Save an list of strings to 'items' key.
      await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
    } catch (e) {
      print("---------print----111-----------${e}");
    }
  }

  Future<String> findData() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String name = prefs.getString('name') ?? '未设置';

      // Try reading data from the 'counter' key. If it doesn't exist, returns null.
      final int? counter = prefs.getInt('counter');
// Try reading data from the 'repeat' key. If it doesn't exist, returns null.
      final bool? repeat = prefs.getBool('repeat');
// Try reading data from the 'decimal' key. If it doesn't exist, returns null.
      final double? decimal = prefs.getDouble('decimal');
// Try reading data from the 'action' key. If it doesn't exist, returns null.
      final String? action = prefs.getString('action');
// Try reading data from the 'items' key. If it doesn't exist, returns null.
      final List<String>? items = prefs.getStringList('items');
      return action!;
    } catch (e) {
      print("---------catch----222-----------${e}");

      return "";
    }
  }

/**
 * 删除全部
 */
  void DeteleData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
// Remove data for the 'counter' key.
    await prefs.remove('counter');
  }








/**
 * 创建数据库
 * 
 * 
 * https://flutter.cn/docs/cookbook/persistence/sqlite
 * 
 * 
 */
// Future<void> SqfliteCreate () async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // 初始化数据库
// final database = openDatabase(
//   // Set the path to the database. Note: Using the `join` function from the
//   // `path` package is best practice to ensure the path is correctly
//   // constructed for each platform.
//   // join(await getDatabasesPath(), 'doggie_database.db'),

//     join(await getDatabasesPath(), 'doggie_database.db'),
//   // When the database is first created, create a table to store dogs.
//   onCreate: (db, version) {
//     // Run the CREATE TABLE statement on the database.
//     return db.execute(
//       'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
//     );
//   },
//   // Set the version. This executes the onCreate function and provides a
//   // path to perform database upgrades and downgrades.
//   version: 1, 
// ); 
// }





// Future<void> initTable()async{

// // Create a Dog and add it to the dogs table
// var fido = DogBean(
//   id: 0,
//   name: 'Fido',
//   age: 35,
// );


// // await insertDog(fido);
// }



// Define a function that inserts dogs into the database
// Future<void> insertDog(DogBean dog) async {
//   // Get a reference to the database.



//   final database = openDatabase(
//   // Set the path to the database. Note: Using the `join` function from the
//   // `path` package is best practice to ensure the path is correctly
//   // constructed for each platform.
//   // join(await getDatabasesPath(), 'doggie_database.db'),

//     join(await getDatabasesPath(), 'doggie_database.db'),
//   // When the database is first created, create a table to store dogs.
//   onCreate: (db, version) {
//     // Run the CREATE TABLE statement on the database.
//     return db.execute(
//       'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
//     );
//   },
//   // Set the version. This executes the onCreate function and provides a
//   // path to perform database upgrades and downgrades.
//   version: 1, 
// );


//   final db = await database;

//   // Insert the Dog into the correct table. You might also specify the
//   // `conflictAlgorithm` to use in case the same dog is inserted twice.
//   //
//   // In this case, replace any previous data.
//   await db.insert(
//     'dogs',
//     dog.toMap(),
//     conflictAlgorithm: ConflictAlgorithm.replace,
//   );
// }




// // A method that retrieves all the dogs from the dogs table.
// Future<List<DogBean>> Selectdogs() async {
//   // Get a reference to the database.

//   final database = openDatabase(
//   // Set the path to the database. Note: Using the `join` function from the
//   // `path` package is best practice to ensure the path is correctly
//   // constructed for each platform.
//   // join(await getDatabasesPath(), 'doggie_database.db'),

//     join(await getDatabasesPath(), 'doggie_database.db'),
//   // When the database is first created, create a table to store dogs.
//   onCreate: (db, version) {
//     // Run the CREATE TABLE statement on the database.
//     return db.execute(
//       'CREATE TABLE dogs(id INTEGER PRIMARY KEY, name TEXT, age INTEGER)',
//     );
//   },
//   // Set the version. This executes the onCreate function and provides a
//   // path to perform database upgrades and downgrades.
//   version: 1, 
  
// );

//   final db = await database;

//   // Query the table for all the dogs.
//   final List<Map<String, Object?>> dogMaps = await db.query('dogs');

//   // Convert the list of each dog's fields into a list of `Dog` objects.
//   return [
//     for (final {
//           'id': id as int,
//           'name': name as String,
//           'age': age as int,
//         } in dogMaps)
//       DogBean(id: id, name: name, age: age),
//   ];
// }


// Future<void> updateDog(DogBean dog) async {
//   // Get a reference to the database.

 
  
//   final database = openDatabase(
//   // Set the path to the database. Note: Using the `join` function from the
//   // `path` package is best practice to ensure the path is correctly
//   // constructed for each platform.
//   // join(await getDatabasesPath(), 'doggie_database.db'),

//     join(await getDatabasesPath(), 'doggie_database.db'),
//   // When the database is first created, create a table to store dogs.
 
//   // Set the version. This executes the onCreate function and provides a
//   // path to perform database upgrades and downgrades.
//   version: 1, 
  
// );
//   final db = await database;

//   // Update the given Dog.
//   await db.update(
//     'dogs',
//     dog.toMap(),
//     // Ensure that the Dog has a matching id.
//     where: 'id = ?',
//     // Pass the Dog's id as a whereArg to prevent SQL injection.
//     whereArgs: [dog.id],
//   );
// }





// Future<void> deleteDog(int id) async {
//   // Get a reference to the database.


    
//   final database = openDatabase(
//   // Set the path to the database. Note: Using the `join` function from the
//   // `path` package is best practice to ensure the path is correctly
//   // constructed for each platform.
//   // join(await getDatabasesPath(), 'doggie_database.db'),

//     join(await getDatabasesPath(), 'doggie_database.db'),
//   // When the database is first created, create a table to store dogs.
 
//   // Set the version. This executes the onCreate function and provides a
//   // path to perform database upgrades and downgrades.
//   version: 1, 
  
// );
//   final db = await database;

//   // Remove the Dog from the database.
//   await db.delete(
//     'dogs',
//     // Use a `where` clause to delete a specific dog.
//     where: 'id = ?',
//     // Pass the Dog's id as a whereArg to prevent SQL injection.
//     whereArgs: [id],
//   );
// }



}
