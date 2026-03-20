



import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main(List<String>args){

  runApp(MainPage());
}
//路由跳转Material风格，只能有一个MaterialApp
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/list",
      routes: {
        "/list":(context)=>ListPage(),
        "/detail":(context)=>DetailPage()
      },
      home:ListPage() ,//列表页 详情页
    );
  }
}
//列表页
class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("列表页"),
      ),
      body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: 100,
          itemBuilder: (BuildContext context,int index){
            return GestureDetector(
              onTap: (){
                print("到详情页");
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage()));
                Navigator.pushNamed(context, "/detail",arguments: {"id": index + 1 });
              },
              child:  Container(
                color: Colors.blue,
                alignment: Alignment.center,
                height: 100,
                margin: EdgeInsets.only(top: 10),
                child:Text("列表项${index+1}",
                    style: TextStyle(color: Colors.white,fontSize: 20)),
              ),
            );
          }),

    );

  }
}


//详情页
class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String _id = "";
  @override
  void initState(){
    super.initState();
    Future.microtask((){
      //获取路由参数
      if(ModalRoute.of(context) != null){
        //能够获取到路由参数
        Map<String,dynamic>params =
        ModalRoute.of(context)!.settings.arguments as Map<String,dynamic>;
        _id = params["id"].toString();
        print(params["id"]);
        print(_id);
        setState(() {

        });
      }else{

      }
    });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("详情页"),

        ),
        body: Center(
          child: Column(
            children: [
              TextButton(onPressed: (){
                Navigator.pop(context);
              }, child: (Text("返回上一个页面")),
              ),
              TextButton(onPressed: (){
                Navigator.pushNamed(context, "/list");
              }, child: (Text("去列表页面$_id")),
              ),
            ],
          ),
        ));
  }
}
