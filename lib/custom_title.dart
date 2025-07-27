import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/container_img_model.dart';

class CustomTitle extends StatefulWidget {
  const CustomTitle({super.key, required this.containerImgText});
  final ContainerImgModel containerImgText;

  @override
  State<CustomTitle> createState() => _CustomTitleState();
}

class _CustomTitleState extends State<CustomTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: 240,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.black, width: 1),
        ),
        child: Column(
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  // border: Border.fromBorderSide(),
                  // color: Colors.green,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(widget.containerImgText.imgUrl))),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.containerImgText.title,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 21),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Rs.  ',
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Text(
                  widget.containerImgText.price.toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
