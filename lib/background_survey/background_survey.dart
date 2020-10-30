import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

class background_survey extends StatefulWidget {
  @override
  _background_surveyState createState() => _background_surveyState();
}

class _background_surveyState extends State<background_survey> {
  bool _isSelected;
  int _activities = 0;
  int _hobby = 0;
  int _sports = 0;
  int _vacation = 0;
  int _total = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Background Survey'),
        ),
        body: _surveyList());
  }

  Widget _surveyList() {
    return Scrollbar(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(25.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 25),
              Center(
                child: Text(
                  "이 Background Survey 응답을 기초로 개인 맞춤형 문항이 출제가 됩니다.\n"
                  "질문을 자세히 읽고 답변해 주시기 바랍니다.",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "1. 현재 귀하는 어느 분야에 종사하고 계십니까?",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "(한 개를 고르세요.)",
                style: TextStyle(color: Colors.red),
              ),
              RadioButtonGroup(
                labels: <String>[
                  "사업/회사",
                  "재택근무/재택사업",
                  "교사/교육자",
                  "군복무",
                  "일 경험 없음"
                ],
                onSelected: (String selected) => setState(() {}),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "2. 현재 귀하는 학생입니까?",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "(한 개를 고르세요.)",
                style: TextStyle(color: Colors.red),
              ),
              RadioButtonGroup(
                labels: <String>[
                  "네",
                  "아니오",
                ],
                onSelected: (String selected) => setState(() {}),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "3. 현재 귀하는 어디에 살고 계십니까?",
                style: TextStyle(fontSize: 18.0),
              ),
              Text(
                "(한 개를 고르세요.)",
                style: TextStyle(color: Colors.red),
              ),
              RadioButtonGroup(
                labels: <String>[
                  "개인주택이나 아파트에 홀로 거주",
                  "친구나 룸메티으와 함께 주택이나 아파트에 거주",
                  "가족(배우자/자녀/기타 가족 일원)과 함께 주택이나 \n아파트에 거주",
                  "학교 기숙사",
                  "군대 막사",
                ],
                onSelected: (String selected) => setState(() {}),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "4~7번 문항에서 12개 이상 선택해 주시기 바랍니다.",
                style: TextStyle(color: Colors.red),
              ),
              Text("4. 귀하는 여가 활동으로 주로 무엇을 하십니까? $_activities/24",
                  style: TextStyle(fontSize: 18.0)),
              Text("(2개 이상 선택해주세요.)", style: TextStyle(color: Colors.red)),
              CheckboxGroup(
                labels: <String>[
                  "영화보기",
                  "클럽/나이트클럽 가기",
                  "공연보기",
                  "콘서트보기",
                  "박물관가기",
                  "공원가기",
                  "캠핑하기",
                  "해변가기",
                  "스포츠 관람",
                  "주거 개선",
                  "술집/바에 가기",
                  "카페/커피 전문점에 가기",
                  "게임하기(비디오,카드,보드,휴대폰 등)",
                  "당구치기",
                  "체스하기",
                  "SNS에 글 올리기",
                  "친구들과 문자 대화하기",
                  "시험대비 과정 수강하기",
                  "뉴스를 보거나 듣기",
                  "요리 관련 프로그램 시청하기",
                  "차로 드라이브하기",
                  "스파/마사지샵 가기",
                  "구직활동하기",
                  "자원봉사하기"
                ],
//          onSelected: (List<String> checked) => setState(() {
//            _isSelected = checked;
//            print(_isSelected);
//            // _increment_Activities_Counter();
//          }),
                onChange: (bool isChecked, String label, int index) {
                  _isSelected = isChecked;
                  _increment_Activities_Counter();
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text("5. 귀하의 취미나 관심사는 무엇입니까? $_hobby/13",
                  style: TextStyle(fontSize: 18.0)),
              Text("(1개 이상을 고르세요.)", style: TextStyle(color: Colors.red)),
              CheckboxGroup(
                labels: <String>[
                  "아이에게 책 읽어주기",
                  "음악 감상하기",
                  "악기 연주하기",
                  "혼자 노래부르거나 합창하기",
                  "춤추기",
                  "글쓰기(편지, 단문, 시 등)",
                  "그림 그리기",
                  "요리하기",
                  "애완동물 기르기",
                  "주식투자하기",
                  "신문읽기",
                  "여행 관련 잡지나 블로그 읽기",
                  "사진촬영하기"
                ],
                onChange: (bool isChecked, String label, int index) {
                  _isSelected = isChecked;
                  _increment_Hobby_Counter();
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text("6. 귀하는 주로 어떤 운동을 즐기십니까? $_sports/24",
                  style: TextStyle(fontSize: 18.0)),
              Text("(1개 이상을 고르세요.)", style: TextStyle(color: Colors.red)),
              CheckboxGroup(
                labels: <String>[
                  "농구",
                  "야구/소프트볼",
                  "축구",
                  "미식축구",
                  "하키",
                  "크리켓",
                  "골프",
                  "배구",
                  "테니스",
                  "배드민턴",
                  "탁구",
                  "수영",
                  "자전거",
                  "스키/스노우보드",
                  "아이스 스케이트",
                  "조깅",
                  "걷기",
                  "요가",
                  "하이킹/트래킹",
                  "낚시",
                  "헬스",
                  "태권도",
                  "운동 수업 수강하기",
                  "운동을 전혀 하지 않음"
                ],
                onChange: (bool isChecked, String label, int index) {
                  _isSelected = isChecked;
                  _increment_Sports_Counter();
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text("7. 귀하는 어떤 휴가나 출장을 다녀온 경험이 있습니까? $_vacation/5",
                  style: TextStyle(fontSize: 18.0)),
              Text("(1개 이상을 고르세요.)", style: TextStyle(color: Colors.red)),
              CheckboxGroup(
                labels: <String>[
                  "국내출장",
                  "해외출장",
                  "집에서 보내는 휴가",
                  "국내 여행",
                  "해외 여행"
                ],
                onChange: (bool isChecked, String label, int index) {
                  _isSelected = isChecked;
                  _increment_Vacation_Counter();
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text('Background Survey 제출',
                    style: TextStyle(fontSize: 18)),
                onPressed: () {},
              ),
            ],
          ),
        ),
        // 바텀 바 구현할 것 bottom: ,
      ),
    );
  }

  void _increment_Activities_Counter() {
    if (_isSelected == true) {
      setState(() {
        _activities++;
        _total++;
      });
    } else {
      setState(() {
        _activities--;
        _total--;
      });
    }
  }

  void _increment_Hobby_Counter() {
    if (_isSelected == true) {
      setState(() {
        _hobby++;
        _total++;
      });
    } else {
      setState(() {
        _hobby--;
        _total--;
      });
    }
  }

  void _increment_Sports_Counter() {
    if (_isSelected == true) {
      setState(() {
        _sports++;
        _total++;
      });
    } else {
      setState(() {
        _sports--;
        _total--;
      });
    }
  }

  void _increment_Vacation_Counter() {
    if (_isSelected == true) {
      setState(() {
        _vacation++;
        _total++;
      });
    } else {
      setState(() {
        _vacation--;
        _total--;
      });
    }
  }
}
