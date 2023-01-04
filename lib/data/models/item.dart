import 'package:hive/hive.dart';

part 'item.g.dart';

@HiveType(typeId: 0)
class Item {

  @HiveField(0)
  final String image;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String type;
  @HiveField(3)
  final int count;
  @HiveField(4)
  final int minOrderCount;
  @HiveField(5)
  final double price;
  @HiveField(6)
  final double cost;

  Item({
    required this.image,
    required this.name,
    required this.type,
    required this.count,
    required this.minOrderCount,
    required this.price,
    required this.cost
  });


  // Item.fromMap(Map<String, dynamic> map);
  //
  // Map<String, dynamic> toMap() {
  //   Map<String, dynamic> map = <String, dynamic> {};
  //
  //       return map;
  // }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Item &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          type == other.type;

  @override
  int get hashCode => name.hashCode ^ type.hashCode;
}
