import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.teal.shade300, borderRadius: BorderRadius.circular(20.0)),
      child: TextField(
        autocorrect: true,
        onChanged: (val) {
          print(val);
        },
        style: const TextStyle(color: Colors.white) ,
        decoration: const InputDecoration(
          
          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
          border: InputBorder.none,
          hintText: "Search for Player",
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.search,color: Colors.white),
        ),
      ),
    );
  }
}
