



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(List<String>args){
  // runApp(MainPage());
}

//
// class MainPage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     // TODO: 无状态组件-自定义组件中的一种
//
//   }
//
// }

//有状态组件第一个类 对外
class MainPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MainPageState();
  }

}

//第二个类 内部类 负责管理数据 处理业务逻辑 并渲染视图
class _MainPageState extends State<MainPage>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "flutter无状态组件",
        home: Scaffold(
          appBar: AppBar(title: Text("顶部"),centerTitle: true,backgroundColor: Colors.blue,),
          body: Container(
            width: double.infinity,//添加宽占满整个屏幕
            child: Text("中部区域"),
            alignment: Alignment.center,
            color:Colors.red,
          ),
          bottomNavigationBar: Container(
            height: 80,
            child: Text("底部区域"),
            alignment: Alignment.center,
            color:Colors.grey,
          ),
        )
    );
  }

}