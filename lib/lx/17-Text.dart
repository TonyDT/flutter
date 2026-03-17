
import 'package:ccdate/lx/3-%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6-StatelessWiget%E6%97%A0%E7%8A%B6%E6%80%81.dart';
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  List<Widget>getList(){
    return  List.generate(10, (index){
      return Container(
        width: 80,
        height:80,
        color: Colors.blue,
      );
    });

    // return[];
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Text"),
        ),
        body:Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          color: Colors.yellow,
          child: Text("测试数据",style: TextStyle(
              fontSize: 30,
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w800,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red
          ),),
          //多文本...设置
          // child: Text("今天星期五今天星期五今天星期五，"
          //     "今天星期五今天星期五今天星期五今天星期，"
          //     "五今天星期五今天星期五今天星期五今天星期五今天星期五",style:
          //     TextStyle(color: Colors.blue,fontSize: 30),maxLines: 2,overflow: TextOverflow.ellipsis,),
          // child: Text("测试数据",style: TextStyle(
          //   fontSize: 30,
          //   color: Colors.blue,
          //   fontStyle: FontStyle.italic,
          //   fontWeight: FontWeight.w800,
          //   decoration: TextDecoration.underline,
          //   decorationColor: Colors.red
          // ),),
          //Text Hello Flutter不同颜色设置
        //   child: Text.rich(
        //       TextSpan(
        //           text: "Hello ",
        //           children: [
        //             TextSpan(text: "Flutter",style: TextStyle(color: Colors.blue)),
        //             TextSpan(text: "!")
        //           ],
        //           style: TextStyle(
        //               color: Colors.red,
        //               fontSize: 40,
        //               fontWeight: FontWeight.bold))),
        // ),
        ),
      ),
    );
  }
}
