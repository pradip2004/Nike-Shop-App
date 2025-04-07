import 'package:flutter/material.dart';
import 'package:nike_app/components/shoe_tile.dart';
import 'package:nike_app/models/shoe.dart';

class MyShopPage extends StatefulWidget {
  const MyShopPage({super.key});

  @override
  State<MyShopPage> createState() => _MyShopPageState();
}

class _MyShopPageState extends State<MyShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //search bar
        Container(
          margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: const Icon(Icons.search),

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
        // message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flies.. some fly longer then others',
            style: TextStyle(color: Colors.grey[600]),
          ),
        ),
        // hot picks
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks 🔥",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text('see all', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),

        const SizedBox(height: 20),

        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                name: "Nike Air Max 270",
                price: "\$150",
                imageUrl: "lib/images/4.png",
                description: "A comfortable and stylish shoe.",
              );
              return ShoeTile(shoe: shoe);
            },
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25.0, left: 25, right: 25),
          child: Divider(color: Colors.white),
        ),
      ],
    );
  }
}
