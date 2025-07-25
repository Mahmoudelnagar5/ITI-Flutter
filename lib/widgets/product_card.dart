import 'package:flutter/material.dart';
import 'package:iti/core/utils/app_color.dart';

class ProductCard extends StatefulWidget {
  final String title;
  final String description;
  final String price;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool _isFavorite = false;

  void toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0, left: 15, bottom: 8),
      child: Container(
        height: 170.0,
        width: double.infinity,
        color: AppColor.backgroundColor,
        child: Row(
          children: [
            Container(
              width: 140.0,
              height: 150.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      widget.title,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 45.0),
                    GestureDetector(
                      onTap: toggleFavorite,
                      child: Container(
                        height: 40.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _isFavorite
                              ? AppColor.hintColor.withOpacity(0.2)
                              : Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColor.hintColor.withOpacity(0.2),
                              spreadRadius: 2,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Center(
                          child: _isFavorite
                              ? Icon(Icons.favorite, color: Colors.red)
                              : Icon(Icons.favorite_border),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0),
                SizedBox(
                  width: 175.0,
                  child: Text(
                    widget.description,
                    textAlign: TextAlign.left,
                    style: TextStyle(color: AppColor.hintColor, fontSize: 13.0),
                  ),
                ),
                SizedBox(height: 8.0),
                Row(
                  children: [
                    SizedBox(width: 45.0),
                    Container(
                      height: 40.0,
                      width: 50.0,
                      color: AppColor.secondaryColor,
                      child: Center(
                        child: Text(
                          widget.price,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      width: 100.0,
                      color: AppColor.primaryColor,
                      child: Center(
                        child: Text(
                          'Add to cart',
                          style: TextStyle(
                            color: AppColor.backgroundColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
