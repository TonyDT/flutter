
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
            body: GridView.builder(
                padding: EdgeInsets.all(10),
                //懒加载宽度自适应
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,//设置比例宽高 1 0.5 2
                ),
                //  按照列数去固定
                //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                //       crossAxisSpacing: 15,
                //       mainAxisSpacing: 10,
                //       crossAxisCount: 4),//布局委托
                itemCount: 100,
                itemBuilder: (BuildContext context,int index) {
                  return Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text("第${index+1}个",style: TextStyle(color: Colors.white,fontSize: 20),),
                  );
                })

        ));
  }
}
