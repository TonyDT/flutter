
import 'package:ccdate/lx/3-%E8%87%AA%E5%AE%9A%E4%B9%89%E7%BB%84%E4%BB%B6-StatelessWiget%E6%97%A0%E7%8A%B6%E6%80%81.dart';
import 'package:flutter/material.dart';
void main(List<String>args){
  runApp(MainPage());
}
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  TextEditingController _phoneController = TextEditingController();//账号控制器
  TextEditingController _codeController = TextEditingController();//密码控制器
  ScrollController _controller = ScrollController();//滚动条的控制器

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("登录"),
          centerTitle: true,
        ),
        body: ListView.separated(
            itemBuilder: (BuildContext context,int index){
              return Container(
                height: 80,
                width: double.infinity,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text("这是${index +1}个",style: TextStyle(color: Colors.white,fontSize: 20),),
              );
            },
            separatorBuilder: (BuildContext context,int index){
              return Container(
                height: 1,
                width: double.infinity,
                color: Colors.yellow,
              );
            },
            itemCount: 100),
        // body: ListView.builder(
        //   itemCount: 100,
        //   itemBuilder: (BuildContext context,int index){
        //     return Container(
        //           margin: EdgeInsets.only(top:10),
        //           color: Colors.blue,
        //           width: double.infinity,
        //           height: 50,
        //           alignment: Alignment.center,
        //           child: Text("我是第${index+1}个",style: TextStyle(color: Colors.white),),
        //         );
        //   },
        //   padding: EdgeInsets.all(40),
        // children: List.generate(100, (index){
        //   return Container(
        //     margin: EdgeInsets.only(top:10),
        //     color: Colors.blue,
        //     width: double.infinity,
        //     height: 50,
        //     alignment: Alignment.center,
        //     child: Text("我是第${index+1}个",style: TextStyle(color: Colors.white),),
        //   );
        // }),
      ),
    );
  }
}
