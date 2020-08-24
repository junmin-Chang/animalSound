import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';


void main() => runApp(AnimalApp());





class AnimalApp extends StatelessWidget {


  void playSound(int a) {

    final player = AudioCache();
    player.play('animal$a.wav');

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink[100],
        body: ListView(
          children: <Widget>[
            Column(

              children: <Widget>[
                FlatButton(onPressed: () {
                  playSound(1);

                },child: Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=0.752xw:1.00xh;0.175xw,0&resize=640:*')),
                
                SizedBox(height: 20.0,),

                FlatButton(onPressed:() {
                  playSound(2);
                },child: Image.network('https://www.mcmurrayhatchery.com/images/global/mc/McMurrayHatchery-White-Pekin-Duck.jpg')),


                SizedBox(height: 20.0,),

                FlatButton(onPressed: () {
                  playSound(3);
                },child: Image.network('https://static.toiimg.com/thumb/msid-67586673,width-800,height-600,resizemode-75,imgsize-3918697,pt-32,y_pad-40/67586673.jpg')),


                SizedBox(height: 20.0,),

                FlatButton(onPressed:() {
                  playSound(4);
                },child: Image.network('https://www.milkmeansmore.org/wp-content/uploads/2017/07/Curious-Cow-Blog-Feature-Image.jpg'))
              ],
            )
          ],
        )
      ),
    );
  }
}
