import 'package:flutter/material.dart';

import '../consts/app_colors.dart';
import '../model/food_model.dart';

// ignore: must_be_immutable
class GridViewWidget extends StatelessWidget {
  GridViewWidget({super.key, required this.medqHt, required this.foodLists});
  List<FoodModel> foodLists;
  final double medqHt;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 25,
          childAspectRatio: 130 / 160),
      itemCount: foodLists.length,
      itemBuilder: (context, index) {
        FoodModel foodItems = foodLists[index];

        return (Stack(
          fit: StackFit.loose,
          children: [
            // Container(
            //   // margin: EdgeInsets.only(top: medqHt * 0.05),
            //   decoration: BoxDecoration(
            //       color: white, borderRadius: BorderRadius.circular(12)),
            // ),
            Positioned(
              top: 45,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                // margin: EdgeInsets.only(top: medqHt * 0.05),
                // height: 50,
                decoration: BoxDecoration(
                    color: creamClr, borderRadius: BorderRadius.circular(8)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodItems.title,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          foodItems.subTitle!,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(
                          height: 0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // ignore: unnecessary_string_escapes
                              Text('\$${foodItems.price}',
                                  style:
                                      Theme.of(context).textTheme.titleMedium),
                              const CircleAvatar(
                                radius: 8,
                                backgroundColor: black,
                                child: Icon(
                                  Icons.add,
                                  color: white,
                                  size: 12,
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
            // images
            Positioned(
              left: 0,
              right: 0,
              bottom: 100,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                decoration: BoxDecoration(
                  color: dairyCreamClr,
                  border: Border.all(
                      color: const Color.fromRGBO(255, 167, 38, 1), width: 0.3),
                  shape: BoxShape.circle,
                ),
                // child -> images
                child: Image.asset(
                  foodItems.images,
                  height: 70,
                ),
              ),
            ),
            // texts
            Positioned(
              top: 35,
              right: 0,
              child: Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange[200],
                      size: 12,
                    ),
                    const Text(
                      '4.8',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 12),
                    ),
                  ],
                ),

                // child: Container(),
              ),
            ),
          ],
        ));
      },
    );
  }
}

class GridTiles extends StatelessWidget {
  const GridTiles({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
