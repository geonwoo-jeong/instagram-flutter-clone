import 'package:flutter/material.dart';
import 'package:instagram_flutter_clone/create_page.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CreatePage()
            )
          );
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.create),
      ),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0
        ),
      itemCount: 5,
      itemBuilder: (context, index) {
        return _buildListItem(context, index);
      }
    );
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network(
      'https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/s150x150/29415092_1812078209088259_921844438651633664_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_ohc=UL85fwGzI2sAX9v48p0&oh=5045b0428c2fde0c19be7f1c1d85e923&oe=5EB5D107',
      fit: BoxFit.cover,
    );
  }
}
