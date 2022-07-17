import 'package:vend/data/models/item.dart';

class Sale {

  Map<Item, int> items = {};
  double total = 0;
  DateTime dateTime;


  Sale(this.dateTime);

  // TODO: look into making this operation atomic
  addItem(Item item) {
    if(!items.containsKey(item)){
      items.putIfAbsent(item, () => 1);
      // increment value at item
    } else {
      items[item] = items[item]! + 1;
    }
    total += item.price!;
  }

  removeItem(Item item){
    if(items.containsKey(item)){
      items.remove(item);
      total -= item.price!;
    }
  }

  getItems(){
    return items.keys;
  }



}