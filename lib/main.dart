import 'package:flutter/material.dart';
import 'package:flutter_starbucks_ui_clone/widget/star_point.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Starbucks(),
    );
  }
}

class Starbucks extends StatelessWidget {
  const Starbucks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: false,
            snap: false,
            floating: false,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.pin,
              background: Stack(
                children: [
                  Lottie.asset(
                    'asset/background.json',
                    fit: BoxFit.contain,
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 4,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 24),
                                child: Text(
                                  '스타벅스 캘린더와 함께\n다가오는 한 해를 준비해요',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Text(
                                '내용 보기 ->',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: StarPoint(),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SliverAppBar(
            pinned: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Icon(Icons.email_outlined),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'What\'s new',
                              style: TextStyle(fontSize: 20),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.confirmation_number_outlined),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text('Coupon', style: TextStyle(fontSize: 20)),
                        )
                      ],
                    ),
                  ],
                ),
                Icon(Icons.notifications_none)
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index'),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.green,
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Pay',
              icon: Icon(Icons.payment),
            ),
            BottomNavigationBarItem(
              label: 'Order',
              icon: Icon(Icons.local_cafe_rounded),
            ),
            BottomNavigationBarItem(
              label: 'Shop',
              icon: Icon(Icons.shopping_bag),
            ),
            BottomNavigationBarItem(
              label: 'Other',
              icon: Icon(Icons.more_horiz_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
