import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  List<Color> l;

  page2(this.l, this .pos);

  int pos;


  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
PageController pageController=PageController();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: widget.pos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your page"),
        backgroundColor: Colors.cyan,
      ),
      body:PageView.builder(
        itemCount: widget.l.length,
        onPageChanged: (value){
          widget.pos=(value);
        },
        itemBuilder: (context, index) {
          return Expanded(child: Container(
            height: double.infinity,
            color: widget.l[index],
          ));
      },) ,
    );
  }
}
