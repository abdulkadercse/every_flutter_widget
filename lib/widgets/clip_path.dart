import 'package:flutter/material.dart';

class ClipPathExample extends StatefulWidget {
  const ClipPathExample({Key? key, }) : super(key: key);

  @override
  State<ClipPathExample> createState() => _ClipPathExampleState();
}
class _ClipPathExampleState extends State<ClipPathExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Path"),
      ),
      body: ClipPath(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Colors.red,
        ),
        clipper: CustomClipPath(),
      ),
    );
  }
}
class CustomClipPath extends CustomClipper<Path> {
  var radius=5.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, 0.0);
    return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}