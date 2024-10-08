import 'package:flutter/material.dart';
import 'package:prk3_3_3/models/prod.dart';
import 'package:prk3_3_3/pages/home_page.dart';

class ItemPage extends StatelessWidget {
  final Item item;

  const ItemPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(234, 213, 208, 208),
      appBar: AppBar(
        title: Text(item.itemTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: Text(
              item.itemName,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Image.asset(
            item.imageItem,
            height: 275,
            width: 300,
            fit: BoxFit.cover,
          ),
          Center(
            child: Text(
              '${item.itemPrice}₽',
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Center(
            child: Text(
              item.itemInfo, style: TextStyle(fontSize: 24),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                      child: const Text("В корзину"),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                        backgroundColor: MaterialStateProperty.all(Colors.grey),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16,),
                  Expanded(
                    child: ElevatedButton(onPressed: (){},
                      child: const Text("Купить"),
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        padding: MaterialStateProperty.all(const EdgeInsets.all(14)),
                        backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
                        foregroundColor: MaterialStateProperty.all(Colors.black),
                        textStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontSize: 23,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}