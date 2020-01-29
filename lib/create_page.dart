import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  Widget _buildBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.send),
        )
      ],
    );
  }

  Widget _buildBody() {
    return Column(
      children: <Widget>[
        Text(
          'No Image'
        ),
        TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: 'Please Input Text'
          ),
        )
      ],
    );
  }
}
