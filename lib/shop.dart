import 'package:flutter/material.dart';

import './ItemContainer.dart';
import './Movie.dart';

class Shop extends StatefulWidget {
  @override
  _ShopState createState() => _ShopState();
}

class  _ShopState extends State<Shop> {
int sum = 0;
int i = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          Text(
            "Total Price: ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
          Text(sum.toString(),
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15),
    ),
          SizedBox(height: 10),
          Expanded(
            child: Stack(
              children: <Widget>[
                ListView.builder(
                  itemCount: Movies.length,
                  itemBuilder: (context, index) => ItemContainer(
                    itemIndex: index,
                    movie: Movies[index],
                    color: Movies[index].isSelected == true ? Colors.amber : Colors.white,
                    press: () => total(context, Movies[index],index),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  total(BuildContext context, Movie movie, int index) {


Movies[index].isSelected == true ?  sum-=movie.price : sum+=movie.price;
setState(() {
    Movies[index].isSelected = !Movies[index].isSelected;
  });
  }

}
