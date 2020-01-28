import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody()
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.exit_to_app),
          onPressed: () {},
        )
      ],
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/s150x150/29415092_1812078209088259_921844438651633664_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_ohc=UL85fwGzI2sAX9v48p0&oh=5045b0428c2fde0c19be7f1c1d85e923&oe=5EB5D107'
                      ),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 28.0,
                          height: 28.0,
                          child: FloatingActionButton(
                            onPressed: null,
                            backgroundColor: Colors.white,
                          )
                        ),
                        SizedBox(
                          width: 25.0,
                          height: 25.0,
                          child: FloatingActionButton(
                            onPressed: null,
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.add)
                          )
                        )
                      ],
                    )
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(8.0)
              ),
              Text(
                'Geonwoo Jeong',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold
                )
              )
            ],
          ),
          Text(
            '0\nPost',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '0\nFollower',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          ),
          Text(
            '0\nFollowing',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18.0),
          )
        ],
      )
    );
  }
}
