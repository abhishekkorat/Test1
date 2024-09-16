import 'package:flutter/material.dart';
import 'package:project/page3.dart';

class abhishek2 extends StatefulWidget {
  const abhishek2({super.key});

  @override
  State<abhishek2> createState() => _abhishek2State();
}

class _abhishek2State extends State<abhishek2> {
  List<Color> l=[Colors.purple,Colors.green,Colors.grey,Colors.red,Colors.yellow,Colors.orange,Colors.blue];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""
            "color page"),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: l.length,
        itemBuilder: (context, index) {
        return InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return page3(l,index);
            },));
          },
          child: Container(
            height: 100,
            color: l[index],
          ),
        );
      },),
    );
  }
}
