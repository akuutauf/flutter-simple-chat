import 'package:flutter/material.dart';

Widget ChatBox(
    {required String name, required String message, required String time}) {
  const Color theme_1 = Color.fromARGB(255, 146, 169, 189);

  return Column(
    children: [
      Container(
        padding: EdgeInsets.only(
          top: 15,
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/person_1.jpg",
                    width: 70,
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  FittedBox(
                    child: Text(
                      message,
                      style: TextStyle(
                          color: theme_1, fontWeight: FontWeight.w300),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      time,
                      style: TextStyle(color: theme_1, fontSize: 12),
                    ),
                    Icon(
                      Icons.star_border_rounded,
                      color: theme_1,
                      size: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      Divider()
    ],
  );
}
