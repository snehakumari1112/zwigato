import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zwigato/widgets/app_bar_widget.dart';

import '../widgets/categories_widget.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/newest_items_widget.dart';
import '../widgets/popular_items_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            AppBarWidget(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 10,
              ),
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    )
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        CupertinoIcons.search,
                        color: Colors.red,
                      ),
                      SizedBox(
                        height: 50,
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: "What would you like to have?",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            CategoriesWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Popular",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            PopularItemsWidget(),
            const Padding(
              padding: EdgeInsets.only(top: 20, left: 10),
              child: Text(
                "Newest",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            NewestItemsWidget(),
          ],
        ),
        drawer: DrawerWidget(),
        floatingActionButton: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, "cartPage");
            },
            child: Icon(
              Icons.shopping_cart,
              size: 28,
              color: Colors.red,
            ),
            backgroundColor: Colors.white,
          ),
        ));
  }
}
