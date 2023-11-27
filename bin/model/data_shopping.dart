import 'dart:convert';

List<Shopping> shoppingListFromJson(String data)
=> List<Shopping>.from(jsonDecode(data).map((e)
=> Shopping.fromJson(e)));

String shoppingToJson(Shopping person)
=> jsonEncode(person.toJson());

class Shopping{

  late String productName;
  late int cost;
  late String category;
  late Details details;
  late Type type;

  Shopping.fromJson(Map<String, dynamic> json){
    productName = json["productName"];
    cost = json["cost"];
    category = json["category"];
    details = Details.fromJson(json["details"]);
    type = Type.fromJson(json["type"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "productName": productName,
      "cost": cost,
      "category": category,
      "details": details,
      "type": type
    };
    return map;
  }

  @override
  String toString() {
    return "Product name: $productName \nCost: $cost \nCategory: $category \nDetails: \n{\n$details\n} \nType: \n{\n$type\n}";
  }

}

class Details{

  late String color;
  late int weight;
  late Dimensions dimensions;

  Details.fromJson(Map<String, dynamic> json){
    color = json["color"];
    weight = json["weight"];
    dimensions = Dimensions.fromJson(json["dimensions"]);
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "color": color,
      "weight": weight,
      "dimensions": dimensions
    };
    return map;
  }

  @override
  String toString() {
    return "\tColor: $color \n\tWeight: $weight \n\tDimensions: \n\t{\n$dimensions\n\t}";
  }

}

class Dimensions{

  late int length;
  late int width;
  late int height;

  Dimensions.fromJson(Map<String, dynamic> json){
    length = json["length"];
    width = json["width"];
    height = json["height"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "length": length,
      "width": width,
      "height": height
    };
    return map;
  }

  @override
  String toString() {
    return "\t\tLength: $length \n\t\tWidth: $width \n\t\tHeight: $height";
  }

}

class Type{

  late String name;
  late String comment;
  late List<int> count;
  late String id;

  Type.fromJson(Map<String, dynamic> json){
    name = json["name"];
    comment = json["comment"];
    count = List<int>.from(json["count"].map((e) => e));
    id = json["id"];
  }

  Map<String, dynamic> toJson(){
    Map<String, dynamic> map = {
      "name": name,
      "comment": comment,
      "count": count,
      "id": id
    };
    return map;
  }

  @override
  String toString() {
    return "\tName: $name \n\tComment: $comment \n\tCount: $count \n\tId: $id";
  }

}