import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:vend/app/labels.dart';
import 'package:vend/data/models/item.dart';
import 'package:path_provider/path_provider.dart';

class ItemBox{

  static const String boxName = itemBoxName;
  static Box ?itemBox;

  ItemBox._();

  static Future<void> checkDatabaseExists() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();
//Initialise the database
    Hive.init(themeDatabaseDir.path);
//If the database exists, open it. Else, call the createDatabase method
    if (await Hive.boxExists(boxName)) {
      if (!Hive.isAdapterRegistered(0)){
        Hive.registerAdapter(ItemAdapter());
      }
      itemBox = await Hive.openBox<Item>(boxName);
    } else {
      createDatabase();
    }
  }

  //This method is used to create the database
  static Future<void> createDatabase() async {
    Directory themeDatabaseDir = await getApplicationSupportDirectory();
//Initialise the database
    Hive.initFlutter(themeDatabaseDir.path);
//Register the Hive database Type Adapter
    Hive.registerAdapter(ItemAdapter());
//Open the database
    itemBox = await Hive.openBox<Item>(boxName);
  }

  static addItem(Item newItem){
    itemBox!.add(newItem);
  }

  static putTodo(int index, Item newItem){
    itemBox!.put(index, newItem);
  }

  static deleteTodo(int index){
    itemBox!.deleteAt(index);
  }

}