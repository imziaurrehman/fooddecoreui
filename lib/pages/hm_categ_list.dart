import 'package:flutter/material.dart';
import 'package:food_decore/consts/app_colors.dart';
import 'package:food_decore/model/food_model.dart';

import 'food_categ_gridview.dart';

class HmBodyCategList extends StatefulWidget {
  const HmBodyCategList({
    super.key,
  });

  @override
  State<HmBodyCategList> createState() => _HmBodyCategListState();
}

class _HmBodyCategListState extends State<HmBodyCategList> {
  int selectedIndex = 0;
  List<String> items = ['Salad', 'Soups', 'Grilled', 'Pizza'];

  @override
  Widget build(BuildContext context) {
    double medqHt = MediaQuery.of(context).size.height;
    double medqWt = MediaQuery.of(context).size.width;

    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: medqHt * 0.056,
          decoration: BoxDecoration(
              color: creamClr,
              borderRadius: BorderRadius.circular(30),
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 0.5,
                    offset: Offset(5, 5),
                    color: grey)
              ]),
          child: ListView.builder(
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                  debugPrint("item no.$selectedIndex ${items[selectedIndex]}");
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: medqWt * 0.08),
                      child: Text(
                        items[index],
                        style: TextStyle(
                            fontWeight: selectedIndex == index
                                ? FontWeight.bold
                                : FontWeight.normal),
                      ),
                    ),
                    Opacity(
                      opacity: selectedIndex == index ? 1.0 : 0.0,
                      child: Padding(
                        padding: EdgeInsets.only(left: medqWt * 0.08),
                        child: const CircleAvatar(
                          backgroundColor:
                              amber, // Or use decoration if more customization is needed
                          radius: 2.3, // Adjust radius as needed
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
            height: 360,
            child: Padding(
              padding: const EdgeInsets.all(4.0),
              child: GridViewWidget(
                medqHt: medqHt,
                foodLists: foodList[selectedIndex],
              ),
            ))
      ],
    );
  }

  // void get iterableItem {
  //   //  var s = foodList.where((foodIndx) => foodIndx.id == items[selectedIndex]).;

  // }
}
