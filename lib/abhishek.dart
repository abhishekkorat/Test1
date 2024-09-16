import 'package:flutter/material.dart';
import 'package:project/page2.dart';

class abhishek extends StatefulWidget {
  const abhishek({super.key});

  @override
  State<abhishek> createState() => _abhishekState();
}

class _abhishekState extends State<abhishek> {
  List<Color> l=[Colors.blue,Colors.grey,Colors.green,Colors.red,Colors.yellow,Colors.orange,Colors.purple,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("color page"),
        backgroundColor: Colors.blue,
      ),
      body:ListView.builder(
      itemCount: l.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return page2(l,index);
            },));
          },
          child: Container(
            height: 100,
            color: l[index],
          ),
        );
      },)
    );
  }
}
