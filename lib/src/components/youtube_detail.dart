import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class YoutubeDetail extends StatelessWidget {
  const YoutubeDetail({Key? key}) : super(key: key);

  Widget _titleZone() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Text('개발하는 동현 유튜브 영상 다시보기',style: TextStyle(fontSize: 15),),
          ),
          Row(
            children: [
              Text('조회수 1000회',style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),),
              Text(" · "),
              Text('2022-02-03',style: TextStyle(fontSize: 13, color: Colors.black.withOpacity(0.5)),)
            ],
          )
        ],
      ),
    );
  }
  Widget _descriptionZone(){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
      child: Text('안녕하세요 개발하는 동동이입니다.',style: TextStyle(fontSize: 14),),
    );
  }

  Widget _buttonZone() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
      _buttonOne('like', '1000'),
      _buttonOne('dislike', '0'),
      _buttonOne('share', '공유'),
      _buttonOne('save', '저장'),
    ],);
  }

  Widget _buttonOne(String iconPath, String text) {
    return Column(
      children: [
        SvgPicture.asset("assets/svg/icons/$iconPath.svg"),
        Text(text),
      ],
    );
  }

  Widget get line => Container(height: 1, color: Colors.black.withOpacity(0.1),);

  Widget _ownerZone() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.withOpacity(0.5),
              backgroundImage: Image.network(
                  "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fpreviews.123rf.com%2Fimages%2Fcaptainvector%2Fcaptainvector1602%2Fcaptainvector160258682%2F52931495-cancel-button.jpg&type=sc960_832")
                  .image,
            ),
            SizedBox(width: 15,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('개발하는동동',style: TextStyle(fontSize: 18),),
                  Text('구독자 10000',style: TextStyle(fontSize: 14,color: Colors.black.withOpacity(0.6)),),
                ],
              ),
            ),
            GestureDetector(child: Text('구독',style: TextStyle(fontSize: 16,color: Colors.red,),),)
          ],
        ),
      ),
    );
  }

  Widget _description() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _titleZone(),
          line,
          _descriptionZone(),
          _buttonZone(),
          SizedBox(height: 20,),
          line,
          _ownerZone()
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(height: 250,color: Colors.grey.withOpacity(0.5),),
          Expanded(child: _description())
        ],
      ),
    );
  }
}
