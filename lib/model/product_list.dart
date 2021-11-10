class product_list
{
  String name;
  String category;
  String id;
  int price;
  String subcategory;
  int quantity;

  product_list(this.name, this.category, this.id, this.price, this.subcategory,this.quantity);
}

List<product_list> woman_data=[
    product_list("Sut","Wash", "6",50,"Woman",1),
    product_list("Patiyala sut","Wash", "7",100,"Woman",1),
    product_list("Top","Wash", "8",50,"Woman",1),
    product_list("Ghagara","Wash", "9",100,"Woman",1),
    product_list("Kurta","Wash", "10",100,"Woman",1),
];

List<product_list> man_data=[
  product_list("Shirt","Wash", "1",50,"Man",1),
  product_list("TShirt","Wash", "2",100,"Man",1),
  product_list("Kurta","Wash", "3",50,"Man",1),
  product_list("Jeans","Wash", "4",100,"Man",1),
  product_list("Naro","Wash", "5",100,"Man",1),
];

List<product_list> kids_data=[
  product_list("Safari","Wash", "11",50,"Kids",1),
  product_list("Towzer","Wash", "12",100,"Kids",1),
  product_list("Top","Wash", "13",50,"Kids",1),
  product_list("Ghagara","Wash", "14",100,"Kids",1),
  product_list("Kurta","Wash", "15",100,"Kids",1),
];

List<product_list> other_data=[
  product_list("sut","Wash", "16",50,"Other",1),
  product_list("Patiyala sut","Wash", "17",100,"Other",1),
  product_list("Top","Wash", "18",50,"Other",1),
  product_list("Ghagara","Wash", "19",100,"Other",1),
  product_list("Kurta","Wash", "20",100,"Other",1),
];