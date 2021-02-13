import 'package:flutter/material.dart';

import './Movie.dart';

class ItemContainer extends StatefulWidget {
  final int itemIndex;
  final Movie movie;
  final Function press;
  final Color color;

  const ItemContainer({
    Key key,
    this.itemIndex,
    this.movie,
    this.press,
    this.color
  }) : super(key: key);
  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10, // 20 / 2
      ),
      height: 160,
      child: InkWell(
        onTap: widget.press,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Container(
              height: 136,
              child: Container(
                decoration: BoxDecoration(
                  color: widget.color
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Hero(
                tag: '${widget.movie.id}',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  height: 200,
                  width: 200,
                  child: Image.asset(
                    widget.movie.image,
                    fit: BoxFit.fitWidth,

                  ),
                ),
              ),
            ),

            Positioned(
              bottom: 0,
              left: 0,
              child: SizedBox(
                height: 136,
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Spacer(),
                      Text(
                        widget.movie.title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30)
                      ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 5,
                      ),
                      child: Text(
                        "฿${widget.movie.price}",
                          style: TextStyle(
                              fontSize: 20)
                      ),

                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

