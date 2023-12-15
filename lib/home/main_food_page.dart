import 'package:flutter/material.dart';
import 'package:oznx_food_delivery/home/food_page_body.dart';
import 'package:oznx_food_delivery/utils/colors.dart';
import 'package:oznx_food_delivery/widgets/big_text.dart';
import 'package:oznx_food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            //scrolling feature
            child: Container(
              margin: EdgeInsets.only(top: 45, bottom: 15),
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      //country and city
                      BigText(
                        text: 'Paraguay',
                        color: AppColors.mainColor,
                      ),
                      Row(
                        children: [
                          SmallText(text: 'Pirapó'),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor,
                      ),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
          FoodPageBody(),
        ],
      ),
    );
  }
}
