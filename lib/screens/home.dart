import 'package:drive_wheels/constants/colors.dart';
import 'package:drive_wheels/widgets/todoitem.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tdBGWhite,
        appBar: _buildAppBar(),
        body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: homePage()));
  }

  Column homePage() {
    return Column(
      children: [_searchArea(), _todoList()],
    );
  }

  Expanded _todoList() {
    return Expanded(
        child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(top: 30),
          child: const Text(
            "All Todo",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
        const TodoItem(),
        const TodoItem(),
        const TodoItem(),
        const TodoItem(),
      ],
    ));
  }

  Container _searchArea() {
    return Container(child: _searchBox());
  }

  Container _searchBox() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6),
      decoration: BoxDecoration(
        color: tdWhite,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        // controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search',
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: Colors.grey[600],
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGWhite,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: tdBlack,
            size: 30,
          ),
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(child: Image.asset('assets/images/avatar.png')),
          )
        ],
      ),
    );
  }
}
