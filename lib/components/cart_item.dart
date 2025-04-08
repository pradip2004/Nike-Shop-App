import 'package:flutter/material.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: Image.asset(widget.shoe.imageUrl),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle),
          onPressed: () {
            Provider.of<Cart>(
              context,
              listen: false,
            ).removeFromCart(widget.shoe);
          },
        ),
      ),
    );
    ;
  }
}
