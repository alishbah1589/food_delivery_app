import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/brands_container.dart';
import 'package:flutter_food_delivery_app/brands_list.dart';
import 'package:flutter_food_delivery_app/custom_container.dart';
import 'package:flutter_food_delivery_app/custom_title.dart';
import 'package:flutter_food_delivery_app/list.dart';
import 'package:flutter_food_delivery_app/list.two.dart';
import 'package:flutter_food_delivery_app/list_of_container.dart';
import 'package:flutter_food_delivery_app/list_three.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 22,
                ),
                Text(
                  'Wel Come',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                  size: 22,
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(11),
              child: Container(
                height: 44,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.black, width: 1),
                ),
                child: const TextField(
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                    hintText: 'Search Your Food',
                    hintStyle: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  'Categories....',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                )
              ],
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
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 310),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.black,
                  size: 25,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return CustomTitle(containerImgText: list[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: listTwo.length,
                    itemBuilder: (context, index) {
                      return CustomTitle(containerImgText: listTwo[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 250,
                  child: ListView.builder(
                    padding: const EdgeInsets.all(10),
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: listThree.length,
                    itemBuilder: (context, index) {
                      return CustomTitle(containerImgText: listThree[index]);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
