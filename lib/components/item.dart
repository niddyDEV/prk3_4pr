import 'package:flutter/material.dart';
import 'package:prk3_3_3/models/prod.dart';
import 'package:prk3_3_3/pages/product_page.dart';

class ItemItem extends StatelessWidget {
  final Item item;

  const ItemItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ItemPage(item: item,)),
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(16),
            color: const Color.fromARGB(234, 213, 208, 208),
          ),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Center(child: Text(
                item.itemName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ),
              Image.asset(
                item.imageItem,
                height: 265,
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
        ),
      ),
    );
  }
}