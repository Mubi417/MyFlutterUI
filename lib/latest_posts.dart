import 'package:flutter/material.dart';
import 'constants.dart';

class LatestPosts extends StatelessWidget {
  final image;
  final title;
  final tag;

  LatestPosts({this.image, this.title, this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    height: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(left: 10),
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          title,
                          style: kHeadings,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(tag),
                            Row(
                              textBaseline: TextBaseline.alphabetic,
                              children: <Widget>[
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 18,
                                ),
                                Text('1'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Divider(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
