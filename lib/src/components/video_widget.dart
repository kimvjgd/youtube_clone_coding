import 'package:flutter/material.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({Key? key}) : super(key: key);

  Widget _thumbnail() {
    return Container(
      height: 250,
      color: Colors.grey.withOpacity(0.5),
    );
  }
  Widget _simpleDetailinfo() {
    return Container(
      padding: EdgeInsets.only(left: 10, bottom: 20),
      child: Row(children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
              "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fpreviews.123rf.com%2Fimages%2Fcaptainvector%2Fcaptainvector1602%2Fcaptainvector160258682%2F52931495-cancel-button.jpg&type=sc960_832")
              .image,
        ),
        SizedBox(width: 15,),
        Expanded(child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Expanded(child: Text('동동 유튜브 다시 보기',maxLines: 2,)),
            IconButton(alignment: Alignment.topCenter,onPressed: (){}, icon: Icon(Icons.more_vert, size: 18,))
          ],),
          Row(children: [
            Text('개발하는 동현',style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.8)),),
            Text(" · "),
            Text('조회수 1000회',style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.6)),),
            Text(" · "),
            Text('2022-02-03',style: TextStyle(fontSize: 12, color: Colors.black.withOpacity(0.6)),),
          ],)
        ],))
      ],),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          _thumbnail(),
          _simpleDetailinfo(),
        ],
      ),
    );
  }
}
