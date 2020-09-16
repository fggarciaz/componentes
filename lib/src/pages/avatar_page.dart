import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://pbs.twimg.com/profile_images/1018943227791982592/URnaMrya_400x400.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
              
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reply),
        onPressed: (){
          Navigator.pop(context);
        }
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'), 
          image: NetworkImage('https://sequitodesabios.neoangora.com/wp-content/uploads/2018/11/stan_lee_perfil.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
  
}