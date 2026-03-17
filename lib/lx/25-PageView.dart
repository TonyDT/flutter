
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
  PageController _pageController = PageController();
  int _currentIndex = 0;//当前激活索引
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text("登录"),
            centerTitle: true,
          ),
          body: CustomScrollView(
            slivers: [
              //包裹普通widget的东西
              SliverToBoxAdapter(
                child: Stack(
                  children: [
                    Container(
                        color: Colors.blue,
                        alignment: Alignment.center,
                        height: 260,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: 10,
                          itemBuilder: (BuildContext context,int index){
                            return Container(
                                alignment: Alignment.center,
                                child:Text("轮播图${index +1}",
                                  style: TextStyle(color: Colors.white,fontSize: 20),)

                            );
                          },
                        )
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        color: Colors.red.withAlpha(0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(10, (index) {
                            return GestureDetector(
                              onTap: (){
                                // _pageController.jumpToPage(index);

                                _pageController.animateToPage(index, duration: Duration(milliseconds: 1), curve: Curves.linear);
                                _currentIndex=index;
                                setState(() {

                                });
                              },
                              child:  Container(
                                margin:  EdgeInsets.only(left: 10),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: _currentIndex == index
                                        ? Colors.red :Colors.white,
                                    borderRadius: BorderRadius.circular(5)),          // 建议改成圆点，更美观
                              ),
                            );

                          }),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SliverToBoxAdapter(child: SizedBox(height: 10,)),
              //pinned固定吸顶
              SliverPersistentHeader(delegate: _Stickycategory(),pinned: true,),
              SliverToBoxAdapter(child: SizedBox(height: 10,)),

              SliverGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: List.generate(100, (index) {
                  return Container(
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      "列表${index + 1}",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  );
                }),
              ),

              // SliverList.separated(
              //   itemCount: 100,
              //     itemBuilder: (BuildContext context,int index){
              //     return Container(
              //       height: 100,
              //       color: Colors.blue,
              //       alignment: Alignment.center,
              //       child: Text("列表项${index+1}",style: TextStyle(color: Colors.white,fontSize: 20),),
              //
              //     );
              // }, separatorBuilder: (BuildContext context,int index){
              //       return SizedBox(height: 20,);
              // })

            ],
          ),

        ));
  }
}


class _Stickycategory extends SliverPersistentHeaderDelegate{
  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: ListView.builder(
          itemCount: 30,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index){

            return Container(
              width: 100,
              margin: EdgeInsets.symmetric(horizontal: 10),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text("分类${index+1}",style: TextStyle(color: Colors.white),),
            );
          }),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 80;//最大展开高度

  @override
  // TODO: implement minExtent
  double get minExtent =>60;//最小折叠高度

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return false;  //是否重新绘制
  }

}