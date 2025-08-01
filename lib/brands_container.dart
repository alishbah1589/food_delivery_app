import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/container_img_model.dart';

class BrandsContainer extends StatefulWidget {
  const BrandsContainer({super.key, required this.containerImgModel});
  final ContainerImgModel containerImgModel;

  @override
  State<BrandsContainer> createState() => _CustomContainerState();
}

class _CustomContainerState extends State<BrandsContainer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.black, width: 1),
                // color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(widget.containerImgModel.imgUrl))),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.containerImgModel.title,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
