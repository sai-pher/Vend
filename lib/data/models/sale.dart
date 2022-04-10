import 'package:vend/data/models/item.dart';

class Sale {

  int? _id;
  List<Item>? items;
  double? total;
  DateTime? dateTime;


  Sale(this.items, this.total, this.dateTime);

  Sale.fromMap(Map<String, dynamic> map);


}