import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/general.dart';

class IncreaseDecreaseItem extends StatelessWidget {
  const IncreaseDecreaseItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var productQuantity =
        Provider.of<General>(context, listen: false).productQuantity;
    return Row(
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: IconButton(
            onPressed: () {
              if (productQuantity == 0) {
                return;
              }
              productQuantity--;
              Provider.of<General>(context, listen: false).setProductQuantity(productQuantity);
            },
            icon: const Icon(Icons.remove),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Consumer<General>(
            builder:(_, val, ch)=> Text(
              val.productQuantity.toString(),
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 10,
                offset: const Offset(0, 3),
              )
            ],
          ),
          child: IconButton(
            onPressed: () {
              productQuantity++;
              Provider.of<General>(context, listen: false).setProductQuantity(productQuantity);
            },
            icon: Icon(Icons.add),
          ),
        ),
      ],
    );
  }
}