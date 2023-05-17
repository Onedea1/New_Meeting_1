import 'package:flutter/material.dart';
import 'package:new_meeting_page/const/colors.dart';

import 'cartegory_button.dart';

class MeetingPage extends StatefulWidget {
  @override
  State<MeetingPage> createState() => _MeetingPageState();
}

class _MeetingPageState extends State<MeetingPage> {
  final int maxLength = 500;
  String textValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      appBar: AppBar(
        title: Text(
          '모임 만들기',
          style: TextStyle(
              height: 1.66,
              color: MIXIN_BLACK_1,
              fontFamily: 'SUIT',
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        leading: IconButton(
          icon: ImageIcon(
            AssetImage('assets/images/Back.png'),
            size: 26,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        backgroundColor: Color(0xFFF2F2F2),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(24, 25, 24, 0),
            child: Column(
              children: [
                SizedBox(
                  // height: 761,
                  height: 630,
                  child: Column(
                    children: [
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '모임명을 작성해주세요',
                            hintStyle: TextStyle(
                              fontSize: 24,
                              fontFamily: 'SUIT',
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFCED0D5),
                            ),
                            counterStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: Color(0xFFCED0D5),
                            ),
                            border: InputBorder.none,
                            counterText: '',
                          ),
                          style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'SUIT',
                            fontWeight: FontWeight.w600,
                          ),
                          maxLength: 25,
                        ),
                      ),
                      SizedBox(height: 10,),
                      //카테고리 버튼
                      CartegoryButton(),
                      SizedBox(height: 20),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "모임에 대한 정보를 입력해주세요.",
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: Color(0xFFCED0D5),
                            ),
                            counterStyle: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'SUIT',
                              color: Color(0xFFCED0D5),
                            ),
                            border: InputBorder.none,
                          ),
                          maxLength: maxLength,
                          maxLines: null,
                        ),
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  child: Text('다음'),
                  style: TextButton.styleFrom(
                    fixedSize: Size(342, 56),
                    elevation: 0,
                    backgroundColor: MIXIN_BLACK_4,
                    foregroundColor: Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
