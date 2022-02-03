import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  Widget _logo() {
    return Container(
      child: Image.asset("assets/images/logo.png", width: 130),
    );
  }

  Widget _actions() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 23,
            height: 23,
            child: SvgPicture.asset("assets/svg/icons/bell.svg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Container(
              width: 30,
              height: 30,
              child: SvgPicture.asset("assets/svg/icons/search.svg"),
            ),
          ),
        ),
        CircleAvatar(
          backgroundColor: Colors.grey.withOpacity(0.5),
          backgroundImage: Image.network(
                  "https://search.pstatic.net/sunny/?src=https%3A%2F%2Fpreviews.123rf.com%2Fimages%2Fcaptainvector%2Fcaptainvector1602%2Fcaptainvector160258682%2F52931495-cancel-button.jpg&type=sc960_832")
              .image,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _logo(),
        _actions(),
      ],
    ));
  }
}
