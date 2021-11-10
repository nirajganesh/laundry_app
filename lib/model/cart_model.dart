class cart_model
{
  late final int id;
  final String productId;
  final String name;
  final String category;
  final String subcategory;
  final int initprice;
  final int productprice;
  final int quantity;

  cart_model({
    required this.id,
    required this.productId,
    required this.name,
    required this.category,
    required this.subcategory,
    required this.initprice,
    required this.productprice,
    required this.quantity
  });

  cart_model.fromMap(Map<dynamic,dynamic> res)
  :id=res['id'],
  productId=res["productId"],
  name=res["name"],
  category=res["category"],
  subcategory=res["subcategory"],
  initprice=res["initprice"],
  productprice=res["productprice"],
  quantity=res["quantity"];

  Map<String,Object> toMap()
  {
    return {
      'id':id ,
      'productId':productId,
      'name':name,
      'category':category,
      'subcategory':subcategory,
      'initprice':initprice,
      'productprice':productprice,
      'quantity':quantity,
    };
  }

}