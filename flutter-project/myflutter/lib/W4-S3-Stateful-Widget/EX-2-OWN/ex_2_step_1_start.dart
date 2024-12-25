import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),
            FavoriteCard(),
          ],
        ),
      ),
    ));


class FavoriteCard extends StatefulWidget {
  const FavoriteCard({
    super.key,
  });

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  bool isFavourite = false;
  Color get iconColor => isFavourite ? Colors.red : Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Container(
        // YOUR CODE
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(width: 1, color: Colors.grey),
        )),
        padding: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'title',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('description'),
                ],
              ),
            ),
            IconButton(
                onPressed: () => {
                  setState(() {
                    isFavourite = !isFavourite;
                  }),
                },
                icon: Icon(
                  Icons.favorite,
                  color: iconColor,
                )),
          ],
        ));
  }
}
