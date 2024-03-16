import 'package:flutter/material.dart';

import 'package:food_decore/consts/app_colors.dart';

import 'hm_categ_list.dart';
import 'hm_header_search_meanu.dart';
import 'hm_header_txt.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: dairyCreamClr,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HmHeaderSearchAndMenuSection(),
              const SizedBox(
                height: 20,
              ),
              const HmHeaderTextSection(),
              const SizedBox(
                height: 20,
              ),
              const HmBodyCategList(),
              const SizedBox(
                height: 30,
              ),
              Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: black,
                    ),
                    child: const Text(
                      'See More',
                      style: TextStyle(color: white),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
