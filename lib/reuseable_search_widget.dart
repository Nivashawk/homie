import 'package:flutter/material.dart';

class SearchCard extends StatefulWidget {
  @override
  _SearchCardState createState() => _SearchCardState();
}

class _SearchCardState extends State<SearchCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          TextField(autocorrect: true,
            decoration: InputDecoration(
            hintText: 'Enter the Location',
            prefixIcon: Icon(Icons.search),
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white70,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0)),
              borderSide: BorderSide(color: Colors.purple[900],
                width: 2),  
            )
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlineButton(
                child: Center(
                  child: Text("Sort"),
                ),
                onPressed:(){
                  //TODO: popup dialog
                } ,
              ),
              OutlineButton(
                child: Center(
                  child: Text("Filter"),
                ),
                onPressed: () {//TODO:full popup dialog
                }, 
              ),
            ],
          )
        ],
      ),
      )
    );
  }
}