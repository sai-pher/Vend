class Item {

  int? _id;
  String? image;
  String? name;
  String? type;
  int? count;
  int? minOrderCount;
  double? price;
  double? cost;

  Item(this.image, this.name, this.type, this.count, this.minOrderCount,
      this.price, this.cost);


  Item.fromMap(Map<String, dynamic> map);

  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic> {};

        return map;
  }

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
