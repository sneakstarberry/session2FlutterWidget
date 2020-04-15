import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myApp/components/chatbox.dart';
import 'package:myApp/login_page.dart';

class TodoApp extends StatefulWidget {
  @override
  _TodoAppState createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> with TickerProviderStateMixin {
  TextEditingController _textController = TextEditingController();
  List<ChatMessage> _messages = <ChatMessage>[];

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 700),
        vsync: this,
      ),
    );
    setState(() {
      _messages.insert(0, message);
    });
    message.animationController.forward();
  }

  @override
  void dispose() {
    for (ChatMessage message in _messages)
      message.animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 화면 가로와 세로 넓이 확인 만들기
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // 앱 바 설정
      // 구글 폰트 패키지 가져오는 방법
      // 앱 바 배경색 바꾸기
      // 글 색, 아이콘색 바꾸기
      // builder 쓸때 context에 대한 설명
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text(
          "TodoApp",
          style: GoogleFonts.montserrat(color: Colors.black, fontSize: 25),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      // 사이드바 설정
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ),
                  );
                },
                child: Text("Login", style: TextStyle(color: Colors.black)),
              ),
              Divider(
                indent: 30,
                endIndent: 30,
                thickness: 2,
              )
            ],
          ),
        ),
      ),
      // 본 화면 설정
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          // 헤더 설정
          Container(
            height: screenHeight / 3,
            width: screenWidth,
            child: Stack(
              children: <Widget>[
                Container(
                  width: screenWidth,
                  child: Image.network(
                    "https://cdn.pixabay.com/photo/2016/11/20/08/03/flowerpot-1842098_960_720.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 24,
                  left: 24,
                  child: Container(
                    height: 38,
                    margin: EdgeInsets.all(4.0),
                    padding: EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Center(
                      // 컨트롤러랑 제출 함수는 나중에 하기
                      child: TextField(
                        controller: _textController,
                        onSubmitted: _handleSubmitted,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.add, color: Colors.tealAccent),
                          hintText: "Todo",
                          hintStyle: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // 리스트 뷰 내용
            // height: screenHeight / 3 * 2 - 80,
            child: ListView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                final _message = _messages[index];
                return Dismissible(
                  key: Key(index.toString()),
                  onDismissed: (direction) {
                    print("dissmissed: $context");
                    if (_messages.contains(_message)) {
                      setState(
                        () {
                          _messages.removeAt(index);
                        },
                      );
                    }
                    // 시간 남으면 하자
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Text("message box ${_message.text} dismissed"),
                      ),
                    );
                  },
                  background: Container(
                    color: Colors.red,
                    child: Center(
                      child: Text(
                        "Message Deleted",
                        style: GoogleFonts.montserrat(
                            fontSize: 26, color: Colors.white),
                      ),
                    ),
                  ),
                  // 여기 부터 먼저하기
                  child: InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(text: _message.text),
                      ),
                    ),
                    child: _message
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final String text;
  DetailPage({this.text});
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Center(child: Text(text)));
  }
}
