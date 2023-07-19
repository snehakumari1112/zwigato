import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 5,
        ),
        child: Row(
          children: [
            //for (int i = 0; i < 5; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        )
                      ]),
                  child: Image.asset(
                    "lib/images/hamburger.png",
                    width: 70,
                    height: 70,
                  ),
                ),
              ),

              Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Image.asset(
                  "lib/images/cake.png",
                  width: 70,
                  height: 70,
                  ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Image.asset(
                  "lib/images/pizza.png",
                  width: 70,
                  height: 70,
                  ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Image.asset(
                  "lib/images/kadhai-paneer.jpg",
                  width: 70,
                  height: 70,
                  ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                    )
                  ]
                ),
                child: Image.asset(
                  "lib/images/coke.jpeg",
                  width: 70,
                  height: 70,
                  ),
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}
