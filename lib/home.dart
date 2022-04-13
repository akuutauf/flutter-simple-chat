import 'package:flutter/material.dart';
import 'drawer.dart';
import 'chat_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const Color style1 = Color.fromARGB(255, 146, 169, 189);
  static const Color style2 = Color.fromARGB(255, 124, 153, 172);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inbox",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        backgroundColor: style1,
        actions: [
          Container(
            padding: EdgeInsets.only(right: 10),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerWidget(),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
        child: ListView(
          children: [
            Container(
              child: Text(
                "Today",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: style2, fontSize: 15),
              ),
            ),
            ChatBox(
                name: "Taufik Hidayat",
                message: "Assalamualaikum wr.wb Pagi\napa kabar kamu...",
                time: "1m"),
            ChatBox(
                name: "Muhammad Ilham Nurizky",
                message: "Nanti buka mau masak apa kak .?",
                time: "1h"),
            ChatBox(
                name: "Dimas Prayoga",
                message: "Maaf kak aku besok gak bisa ikut\nada kuliah",
                time: "1d"),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  Icon(
                    Icons.archive_sharp,
                    color: style2,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                  ),
                  Text(
                    "Chat (12) Di Arsipkan",
                    style: TextStyle(color: style2, fontSize: 12),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
