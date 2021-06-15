import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        // 간단한 위젯이나 타이틀을 AppBar 왼쪽에 위치시킴
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping_cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/1623574572.jpeg'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/1623579627.jpeg'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: Text('DaeHee'),
              accountEmail: Text('daehee1159@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)
                )
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('Home'),
              onTap: () {
                print('Home is clicked');
              },
              // 끝에 넣는것
              trailing: Icon(
                Icons.add
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Settings'),
              onTap: () {
                print('Settings is clicked');
              },
              // 끝에 넣는것
              trailing: Icon(
                  Icons.add
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              // 끝에 넣는것
              trailing: Icon(
                  Icons.add
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// // 코딩셰프 앱 따라하기 1
// // 모양이 변하는 요소가 하나라도 있다면 Stateful로 해야함
// class MyApp extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // 앱 우측 상단 DEBUG 없애는 법
//       debugShowCheckedModeBanner: false,
//       // 앱을 총칭하는 이름
//       title: 'BBANTO',
//       // 앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로
//       home: Grade(),
//     );
//   }
// }
//
// class Grade extends StatelessWidget {
//   const Grade({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.amber[500],
//       appBar: AppBar(
//         title: Text('BBANTO'),
//         backgroundColor: Colors.amber[700],
//         centerTitle: true,
//         elevation: 0.0,
//       ),
//       body: Padding(
//         padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/1623574572.jpeg'),
//                 radius: 60.0,
//               ),
//             ),
//             Divider(
//               height: 60.0,
//               color: Colors.grey[850],
//               thickness: 0.5,
//               endIndent: 30.0,
//             ),
//             Text(
//               'NAME',
//               style: TextStyle(
//                 color: Colors.white,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(
//               height: 10.0
//             ),
//             Text(
//               'BBANTO',
//               style: TextStyle(
//                 color: Colors.white,
//                 letterSpacing: 2.0,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Text(
//               'BBANTO POWER LEVEL',
//               style: TextStyle(
//                 color: Colors.white,
//                 letterSpacing: 2.0,
//               ),
//             ),
//             SizedBox(
//                 height: 10.0
//             ),
//             Text(
//               '14',
//               style: TextStyle(
//                   color: Colors.white,
//                   letterSpacing: 2.0,
//                   fontSize: 28.0,
//                   fontWeight: FontWeight.bold
//               ),
//             ),
//             SizedBox(
//               height: 30.0,
//             ),
//             Row(
//               children: [
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'using lightsaber',
//                   style: TextStyle(
//                     fontSize: 16.0,
//                     letterSpacing: 1.0
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'face hero tattoo',
//                   style: TextStyle(
//                       fontSize: 16.0,
//                       letterSpacing: 1.0
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               children: [
//                 Icon(Icons.check_circle_outline),
//                 SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   'fire flames',
//                   style: TextStyle(
//                       fontSize: 16.0,
//                       letterSpacing: 1.0
//                   ),
//                 ),
//               ],
//             ),
//             Center(
//               child: CircleAvatar(
//                 backgroundImage: AssetImage('assets/1623579627.jpeg'),
//                 radius: 40.0,
//                 backgroundColor: Colors.amber[500],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }






// Flutter 기본 앱
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Startup Name Generator',
//       home: RandomWords(),
//       theme: ThemeData(
//         primarySwatch: Colors.indigo
//       ),
//     );
//   }
// }
//
// class RandomWordState extends State<RandomWords> {
//   // Dart 언어에서 식별자 앞에 밑줄을 붙이면 private 적용
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Startup Name Generator'),
//       ),
//       body: _buildSuggestions(),
//       drawer: Drawer(
//         // Container를 이용해서 배경을 짙은 회색으로 설정
//         child: Container(
//           color: Colors.grey[900],
//           // Column 헤더 추가
//           child: Column(
//             children: [
//               // Drawer 헤더 추가
//               DrawerHeader(
//                 child: Center(
//                   child: Text(
//                     '테스트',
//                     style: TextStyle(color: Colors.white, fontSize: 30),
//                   ),
//                 ),
//                 // 헤더 영역 배경을 검정색 박스로 꾸밈
//                 decoration: BoxDecoration(color: Colors.black),
//               ),
//               ListTile(
//                 // 가장 앞에 별 모양의 아이콘 추가
//                 leading: Icon(Icons.star, color: Colors.white),
//                 // 아이콘 뒤에 '앱 평가하기' 라는 텍스트 추가
//                 title: Text(
//                   '앱 평가하기',
//                   style: TextStyle(color: Colors.white, fontSize: 20),
//                 ),
//                 //TODO 클릭시 플레이스토어 실행 필요
//                 onTap: () {
//                   // 플레이 스토어 링크를 실행
//                   _launchURL(
//                     "https://play.google.com/"
//                   );
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();
//
//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       });
//   }
//
//   Widget _buildRow(WordPair pair) {
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//     );
//   }
// }
//
// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordState createState() => RandomWordState();
// }
//
// void _launchURL(String url) async {
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     print('Could not launch $url');
//   }
// }
