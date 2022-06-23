
import 'package:cheer/models/doctor/review.dart';
import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
 Review review;
 ReviewWidget({
    Key? key,
    required this.review,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Card(
        color: Color(0xFF012A4A),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(
              30,
            ),
            bottomLeft: Radius.circular(
              30,
            ),
          ),
        ),
        child: ListTile(
          leading: Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
          isThreeLine: true,
          title: Text(
            review.user.username,
            style: TextStyle(color: Colors.yellowAccent),
          ),
          subtitle: Text(
            review.body,
            style: TextStyle(color: Colors.white),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                (review.user.id / 10).floor().toString(),
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white),
              ),
              Wrap(
                children: List<Widget>.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
