import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List _images = [
   'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://as.ftcdn.net/r/v1/pics/7b11b8176a3611dbfb25406156a6ef50cd3a5009/home/discover_collections/optimized/image-2019-10-11-11-36-27-681.jpg',
    'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg?r=1a0fc22192d0c808b8bb2b9bcfbf4a45b1793687',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Instagram Clone',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Text(
                  'Welcome to the Instagram',
                  style: TextStyle(
                    fontSize: 24.0
                  )
                ),
                Padding(
                  padding: EdgeInsets.all(8.0)
                ),
                Text(
                  'Sign up to see your friends photos and videos'
                ),
                Padding(
                    padding: EdgeInsets.all(16.0)
                ),
                SizedBox(
                  width: 260.0,
                  child: Card(
                    elevation: 4.0,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.all(1.0)
                          ),
                          SizedBox(
                            width: 80.0,
                            height: 80.0,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                'https://scontent-nrt1-1.cdninstagram.com/v/t51.2885-19/s150x150/29415092_1812078209088259_921844438651633664_n.jpg?_nc_ht=scontent-nrt1-1.cdninstagram.com&_nc_ohc=UL85fwGzI2sAX9v48p0&oh=5045b0428c2fde0c19be7f1c1d85e923&oe=5EB5D107'
                              ),
                            )
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0)
                          ),
                          Text(
                            'geonwoo.jeong@gmail.com',
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            )
                          ),
                          Text('Geonwoo Jeong'),
                          Padding(
                            padding: EdgeInsets.all(8.0)
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network(
                                      _images[0],
                                      fit: BoxFit.cover
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.all(1.0)
                              ),
                              SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network(
                                      _images[1],
                                      fit: BoxFit.cover
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.all(1.0)
                              ),
                              SizedBox(
                                  width: 70.0,
                                  height: 70.0,
                                  child: Image.network(
                                      _images[2],
                                      fit: BoxFit.cover
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.all(1.0)
                              ),
                            ]
                          ),
                          Padding(
                              padding: EdgeInsets.all(4.0)
                          ),
                          Text('Facebook Friends'),
                          Padding(
                              padding: EdgeInsets.all(4.0)
                          ),
                          RaisedButton(
                            child: Text('Follow'),
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () {},
                          ),
                          Padding(
                              padding: EdgeInsets.all(1.0)
                          ),
                        ]
                      ),
                    )
                  ),
                )
              ]
            )
          )
        )
      )
    );
  }
}
