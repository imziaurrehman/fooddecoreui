import 'package:food_decore/consts/images.dart';

class FoodModel {
  String title;
  String? subTitle;
  String des;
  String images;
  String? id;
  double price;

  FoodModel(
      {required this.title,
      required this.images,
      required this.des,
      required this.price,
      this.subTitle,
      this.id});
}

var foodList = [
  // salads
  [
    FoodModel(
        title: 'tomato-salad',
        subTitle: "nice taste",
        images: "assets/images/tomato-salad.png",
        des: 'this is about salads recipes',
        id: 'Salad',
        price: 200.00),
    FoodModel(
        title: 'tania-melnyczuk',
        subTitle: "nice taste",
        images: "assets/images/tania-melnyczuk.png",
        des: 'this is about salads recipes',
        id: 'Salad',
        price: 200.00),
    FoodModel(
        title: 'sina-piryae',
        subTitle: "nice taste",
        images: "assets/images/sina-piryae-removebg-preview.png",
        des: 'this is about salads recipes',
        id: 'Salad',
        price: 200.00),
  ],
  // soups
  [
    FoodModel(
        title: 'julia-kicova',
        images:
            "assets/images/julia-kicova-18YZ7zuQG4Q-unsplash-removebg-preview.png",
        subTitle: "nice soup",
        des: 'this is about soup',
        id: 'Soups',
        price: 200.00),
    FoodModel(
        title: 'julia-kicova',
        images:
            "assets/images/jezebel-rose-KGw62KtHzxA-unsplash-removebg-preview.png",
        subTitle: "nice soup",
        des: 'this is about soup',
        id: 'Soups',
        price: 200.00),
  ],
  // grilled
  [
    // FoodModel(
    //   title: 'chiken tikka',
    //   images: "assets/images/chekentekka.png",
    //   des: 'this is about grilled',
    //   id: 'Grilled',
    //   subTitle: "nice taste",
    //   price: 200.00,
    // ),
    FoodModel(
      title: 'sea fish',
      images: "assets/images/seafish-removebg-preview.png",
      des: 'this is about grilled',
      id: 'Grilled',
      subTitle: "nice taste",
      price: 200.00,
    ),
    FoodModel(
      title: 'chicken roast',
      images: "assets/images/chickenroast-removebg-preview.png",
      des: 'this is about grilled',
      id: 'Grilled',
      subTitle: "nice taste",
      price: 200.00,
    ),
    FoodModel(
      title: 'mix roast',
      images: "assets/images/mixroast-removebg-preview.png",
      des: 'this is about grilled',
      id: 'Grilled',
      subTitle: "nice taste",
      price: 200.00,
    ),
    FoodModel(
      title: 'chiken tikka',
      images: "assets/images/seekhtekka.png",
      des: 'this is about grilled',
      id: 'Grilled',
      subTitle: "nice taste",
      price: 200.00,
    ),
  ],
  // pizzza
  [
    FoodModel(
      title: 'mayou pizza',
      images: "assets/images/pizza-mayoniz.png",
      des: 'this is about pizza',
      id: 'Pizza',
      subTitle: "nice pizzza",
      price: 200.00,
    ),
    FoodModel(
      title: 'ice pizza',
      images: "assets/images/icepizaa.png",
      des: 'this is about pizza',
      id: 'Pizza',
      subTitle: "nice pizzza",
      price: 200.00,
    ),
    FoodModel(
      title: 'mayo-pizza',
      images: "assets/images/pizza-mayoniz.png",
      des: 'this is about pizza',
      id: 'Pizza',
      subTitle: "nice pizzza",
      price: 200.00,
    ),
    FoodModel(
      title: 'ice-pizza',
      images: "assets/images/icepizaa.png",
      des: 'this is about pizza',
      id: 'Pizza',
      subTitle: "nice pizzza",
      price: 200.00,
    ),
  ],
];
