import 'package:flutter/material.dart';
import 'package:sneakers_shops/components/shoe_tile.dart';
import 'package:sneakers_shops/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),

        //message
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: Text(
            "everyone flies... some fly longer than others.",
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        //hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks🔥",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "See all",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 12.0,
        ),

        Expanded(
          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: "Air Jordan",
                  price: "300",
                  imagePath: "lib/images/jordan-barbershop.webp",
                  description: "Cool Sneaker");
              return ShoeTile(shoe: shoe);
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25.0, left: 14.0, right: 14.0),
          child: Divider(
            thickness: 1.0,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 15,
        )
      ],
    );
  }
}
