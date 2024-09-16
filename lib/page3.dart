import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  List<Color> l;


  page3(this.l, this. pos);

  int pos;
  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  PageController pageController=PageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: widget.l.length);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""
            "color page"),
        backgroundColor: Colors.cyan,
      ),
      body: PageView.builder(
        itemCount: widget.l.length ,
        onPageChanged: (value){
          widget.pos=(value);
        },
        itemBuilder: (context, index) {
        return Expanded(child: Container(
          height: double.infinity,
          color: widget.l[index],
        ));
      },),
    );
  }
}
