import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/brands.dart';

class CustomBrandsTitle extends StatefulWidget {
  const CustomBrandsTitle({super.key, required this.containerimage});
  final Brands containerimage;

  @override
  State<CustomBrandsTitle> createState() => _CustomBrandsTitleState();
}

class _CustomBrandsTitleState extends State<CustomBrandsTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      child: Container(
        height: 550,
        width: 250,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Column(
          children: [
            Container(
              height: 160,
              width: 240,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  // border: Border.fromBorderSide(),
                  // color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.containerimage.image))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 6, top: 5),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(22)),
                          child: const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        widget.containerimage.title,
                        style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    ),
                    Text(
                      widget.containerimage.time,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                    const Text(
                      'Delivery fee Rs.59',
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                          fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
