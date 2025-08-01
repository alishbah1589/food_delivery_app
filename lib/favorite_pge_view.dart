import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/brands_list.dart';
import 'package:flutter_food_delivery_app/custom_brands_title.dart';
import 'package:flutter_food_delivery_app/custom_container.dart';
import 'package:flutter_food_delivery_app/custom_title.dart';
import 'package:flutter_food_delivery_app/list.dart';
import 'package:flutter_food_delivery_app/list_of_container.dart';

class FavoritePageView extends StatelessWidget {
  const FavoritePageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(
                          255,
                          240,
                          119,
                          159,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      'Restaurant Brands',
                      style: TextStyle(
                          color: Colors.pink,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(
                        255,
                        240,
                        119,
                        159,
                      ),
                    ),
                    child: const Icon(
                      Icons.shopping_cart_outlined,
                      color: Colors.black,
                      size: 22,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: mixList.length,
                itemBuilder: (context, index) {
                  return CustomContainer(containerImgModel: mixList[index]);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8, top: 10),
              child: Row(
                children: [
                  Text(
                    'Explore Restaurants',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 800,
                  child: GridView.builder(
                    itemCount: brandsList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return CustomBrandsTitle(
                          containerimage: brandsList[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
