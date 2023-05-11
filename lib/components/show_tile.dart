import 'package:flutter/material.dart';
import 'package:sneakers_shops/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  final Shoe shoe;
  const ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 25.0,
        bottom: 14.0,
      ),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          //show pics
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(shoe.imagePath),
          ),

          //description
          Text(
            shoe.description,
            style: TextStyle(color: Colors.grey[500]),
          ),

          //prices + details
          Row(
            children: [
              Column(
                children: [
                  //show name
                  Text(shoe.name),

                  //price
                  Text(shoe.price),
                ],
              )
            ],
          )
          //button to add to cart
        ],
      ),
    );
  }
}
