import 'model/data_shopping.dart';
import 'service/network_service.dart';

void main() async {

  print("\x1B[1m\x1B[32mWelcome To Dart\x1B[0m\x1B[0m");

  String data = await NetworkService.getData(NetworkService.apiShopping);

  List<Shopping> listData = shoppingListFromJson(data);

  for (int i = 0; i < listData.length; i++) {
    print("\n\x1B[1m\x1B[34mShopping ${i + 1}\x1B[0m\x1B[0m\n");

    print(listData[i].type.count[0]);

    // print(listData[i]);
  }

}