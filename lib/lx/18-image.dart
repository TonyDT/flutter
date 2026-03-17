
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
              // child: Image.asset( "lib/images/11.jpg",width:100,
              //   height:100,fit:BoxFit.fill),
              child:Image.network(
                "https://gips0.baidu.com/it/u=3560029307,576412274&fm=3028&app=3028&f=JPEG&fmt=auto?w=960&h=1280",
                width: 100,height: 100,)

          ),
        )
    );
  }
}
