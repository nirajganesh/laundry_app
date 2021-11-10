import 'package:laundry_app/model/cart_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io' as io;
import 'package:path/path.dart';



class db_helper
{
   static Database? _db;
   Future<Database?> get db async
   {
     if(_db!=null)
       {
         return _db!;
       }
     _db=await initDatabase();
   }

   initDatabase() async
   {
     io.Directory documentdirectory=await getApplicationDocumentsDirectory();
     String path=join(documentdirectory.path, 'cart.db');
     var db=await openDatabase(path,version: 1,onCreate: _onCreate,);
     return db;
   }

   _onCreate(Database db,int version) async
   {
      await db.execute(
        'CREATE TABLE cart(id INTEGER PRIMARY KEY, productId VARCHAR UNIQUE, name TEXT,category TEXT,subcategory TEXT,initprice INTEGER,productprice INTEGER,quantity INTEGER)'
      );
   }

   Future<cart_model> insert(cart_model cart) async
   {
     var dbClient=await db;
     await dbClient!.insert('cart', cart.toMap());
     return cart;
   }

   Future<List<cart_model>> getcart_list() async
   {
     var dbClient=await db;
     final List<Map<String,Object?>> queryResult= await dbClient!.query('cart');
     return queryResult.map((e) => cart_model.fromMap(e)).toList();
   }

   Future<bool> getItem(int id) async {
     var dbClient = await db;
     var result = await dbClient!.rawQuery('SELECT * FROM cart WHERE id = $id');
     int? exists = Sqflite.firstIntValue(result);
     return exists == 1;
   }

   Future<int> delete(int id) async
   {
     var dbClient=await db;
     return await dbClient!.delete('cart',where: 'id=?',whereArgs: [id]);
   }

   Future<int> updateQuanity(cart_model cart) async
   {
     var dbClient=await db;
     return await dbClient!.update('cart',cart.toMap(),where: 'id=?',whereArgs: [cart.id]);
   }


}