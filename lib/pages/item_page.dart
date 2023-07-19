import 'package:clippy_flutter/arc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:zwigato/widgets/app_bar_widget.dart';

import '../widgets/item_bottom_nav_bar.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 5),
        child: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(16),
              child: Image.asset(
                "lib/images/banh-mi-pizza.jpeg",
                height: 300,
                //width: 100,
              ),
            ),
            Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 4,
                              minRating: 1,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 18,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 4),
                              itemBuilder: (context, _) => const Icon(
                                Icons.star,
                                color: Colors.red,
                              ),
                              onRatingUpdate: (index) {},
                            ),
                            Text(
                              "\$15",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Banh-Mi-Pizza",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              width: 90,
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),

                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(
                                    CupertinoIcons.minus,
                                  color: Colors.white,
                                  size: 20,
                                  ),
                                  Text(
                                    "1",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    CupertinoIcons.plus,
                                  color: Colors.white,
                                  size: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,),
                        child: Text(
                          "Taste Our Delicious Pizza at low price, this is a famous pizza and you will love it. It will cost you at low price, we hope you will enjoy and order many times.",
                          style: TextStyle(
                            fontSize: 16,
                            
                          ),
                          textAlign: TextAlign.justify,
                          ),
                      ),

                        Padding(
                        padding: EdgeInsets.symmetric(vertical: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            const Text(
                              "Delivery Time",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                
                              ),
                              
                              ),
                            Row(
                              children: const [
                                  Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Icon(CupertinoIcons.clock,
                                color: Colors.red,
                                ),
                                ),
                                Text(
                              "30 Minutes",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                              
                              ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      
                        ],
                      ),


                    
                  ),
                ),
              ),
            
          ],
        ),
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
