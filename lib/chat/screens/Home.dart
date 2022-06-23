
import 'package:cheer/chat/widget/RecentlyChat.dart';
import 'package:cheer/chat/widget/category_selector.dart';
import 'package:cheer/chat/widget/favv_contact.dart';
import 'package:flutter/material.dart';



class Chat_Home extends StatefulWidget {
  const Chat_Home({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}


class _HomeScreenState extends State<Chat_Home> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD2EBED),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xFF012A4A),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          )
        ],
      ),
      body:
      Column(
  children: [
          const CategorySelector(),
          Expanded(

            child: Container(

              decoration: const BoxDecoration(
                  color:  const Color(0xFFD2EBED),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FavoriteContacts(),
                    FavoriteContacts_Users(),
                    RecentChats(),
                  ],
                ),
              ),
            ),
          ),

        ]),
    );
  }
}



