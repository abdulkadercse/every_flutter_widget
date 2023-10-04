import 'package:flutter/material.dart';

class OrientationBuilderExample extends StatelessWidget {


  const OrientationBuilderExample({super.key, });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("OrientationList")),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Text(
                  'Item $index',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}


class OrientationBuilderExample2 extends StatefulWidget {
  @override
  _OrientationBuilderExample2State createState() => _OrientationBuilderExample2State();
}

class _OrientationBuilderExample2State extends State<OrientationBuilderExample2> {


  Widget _portraitMode(){
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Portrait Mode",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            new FlutterLogo(size: 50,),
          ],
        ),
      ],
    );
  }


  Widget _landscapeMode(){
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Landscape Mode",
              style: TextStyle(fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30,),
            // new Image.asset('assets/powered_by.png',
            //   height: 50.0,
            //   fit: BoxFit.cover,
            // ),
            Image.network("https://abdulkadercse.netlify.app/static/media/hero.acd9a2251ea351b96f56.jpeg",fit: BoxFit.cover,height: 50,)

          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen Orientation In Flutter"),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.portrait){
            return _portraitMode();
          }else{
            return _landscapeMode();
          }
        },
      ),
    );
  }
}