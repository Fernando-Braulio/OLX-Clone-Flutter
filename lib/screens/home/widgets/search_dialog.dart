import 'package:flutter/material.dart';

class SearchDiealog extends StatefulWidget {
  SearchDiealog({this.currentSearch});

  final String currentSearch;

  @override
  _SearchDiealogState createState() => _SearchDiealogState(currentSearch);
}

class _SearchDiealogState extends State<SearchDiealog> {
  _SearchDiealogState(String currentSearch)
      : _controller = TextEditingController(text: currentSearch);

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 2,
          left: 2,
          right: 2,
          child: Card(
            child: TextField(
              controller: _controller,
              textInputAction: TextInputAction.search,
              autofocus: true,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(vertical: 15),
                  prefixIcon: IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.grey[700],
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                  suffixIcon: IconButton(
                      icon: Icon(Icons.close),
                      color: Colors.grey[700],
                      onPressed: () {
                        _controller.clear();
                      })),
              onSubmitted: (text) {
                Navigator.of(context).pop(text);
              },
            ),
          ),
        )
      ],
    );
  }
}
